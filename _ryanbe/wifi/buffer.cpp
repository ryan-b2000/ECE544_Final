#include "stdint.h"
#include "buffer.h"
#include <iostream>
using namespace std;

buffer::buffer() {

    for (int i = 0; i < BUFF_SIZE; ++i) {
        buff[i] = 0;
    }

    pi_read = BUFF_EMPTY;
    pi_write = 0;

}


buffer::~buffer() {

}


uint8_t buffer::write (int data) {

    // if buffer is full, do not write anything
    if (pi_write == BUFF_FULL)
        return BUFF_FULL;

    // otherwise, write to buffer
    buff[pi_write] = data;

    // set read pointer if buff transitions from empty to full
    if (pi_read == BUFF_EMPTY)
        pi_read = pi_write;

    // increment to next location
    pi_write = (pi_write + 1) % BUFF_SIZE;

    // check if buffer is now full
    if (pi_write == pi_read)
        pi_write = BUFF_FULL;

    //cout << "WR: write=" << pi_write << " read=" << pi_read << endl;

    return BUFF_OK;
}


uint8_t buffer::read (int & data) {

    // if buffer is empty, do not read anything
    if (pi_read == BUFF_EMPTY)
        return BUFF_EMPTY;

    // otherwise, read from the buffer
    data = buff[pi_read];

    // set write pointer if buff transitions from full to nonempty
    if (pi_write == BUFF_FULL)
        pi_write = pi_read;    
        
    // increment to next location
    pi_read = (pi_read + 1) % BUFF_SIZE;

    // check if buffer is now empty
    if (pi_read == pi_write)
        pi_read = BUFF_EMPTY;

    //cout << "RD: write=" << pi_write << " read=" << pi_read << endl;

    return BUFF_OK;
}
