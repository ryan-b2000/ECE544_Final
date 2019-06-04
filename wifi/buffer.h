#include "stdint.h"


#define BUFF_SIZE 32

#define BUFF_OK 0
#define BUFF_FULL BUFF_SIZE + 1
#define BUFF_EMPTY -1


class buffer {
public:
    buffer();
    ~buffer();

    uint8_t write(int data);
    uint8_t read(int & data);

private:
    int buff [BUFF_SIZE];
    int pi_read;
    int pi_write;
};
