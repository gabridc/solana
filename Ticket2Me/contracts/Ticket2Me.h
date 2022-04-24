/**
 * @brief C-based Helloworld BPF program
 */
#include <solana_sdk.h>

extern uint64_t entrypoint(const uint8_t *input);
