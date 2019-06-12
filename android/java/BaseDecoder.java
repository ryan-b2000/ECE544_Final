/**
 * Class to decode a base64 encoded string
 * to it's color encoded values.
 *
 */
package com.project558.wirelessscamera;


class BaseDecoder {


    /**
     * Default constructor.
     *
     */
    public BaseDecoder() { }

    /**
     *  Function to decode red color.
     *
     * @param a character to convert
     * @param b character to convert
     * @return resulting color.
     */
    public int DecodeRed(char a, char b) {
        int msb, lsb;

        msb = DecodeChar(a);
        lsb = DecodeChar(b);
        //System.out.println("R Decoded a: " + msb);
        //System.out.println("R Decoded b: " + lsb);


        return ((msb >>> 2) & 0xF);
    }

    /**
     * Function to decode to green color.
     *
     * @param a character to convert
     * @param b character to convert
     * @return resulting color.
     */
    public int DecodeGreen(char a, char b) {
        int msb, lsb;

        msb = DecodeChar(a);
        lsb = DecodeChar(b);

        //System.out.println("G Decoded a: " + msb);
        //System.out.println("G Decoded b: " + lsb);

        return (msb << 2 & 0xC) | ((lsb >>> 4) & 0x3);
    }

    /**
     * Function to decode to blue color.
     *
     * @param a character to convert
     * @param b character to convert
     * @return resulting color.
     */
    public int DecodeBlue(char a, char b) {
        int msb, lsb;

        msb = DecodeChar(a);
        lsb = DecodeChar(b);
        //System.out.println("B Decoded a: " + msb);
        //System.out.println("B Decoded b: " + lsb);

        return (lsb & 0xF);
    }

    /**
     * Function to decode the character given to each
     * color decode function.
     * @param decode character to decode.
     * @return  decoded char.
     */
    private int DecodeChar(char decode) {

        int value;

        if (decode >= 'A' && decode <= 'Z') {
            return decode - 65;
        }
        else if (decode >= 'a' && decode <= 'z') {
            return decode - 97;
        }
        else if (decode >= '0' && decode <= '9') {
            return decode - 48;
        }
        else if (decode == '+') {
            return 62;
        }
        else
            return 63;
    }
}
