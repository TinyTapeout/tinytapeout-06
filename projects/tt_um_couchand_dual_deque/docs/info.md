Two independent double-ended queues in one tiny footprint.

## How it works

Each deque is an array of flip flops with a pointer to the top.  The empty and full
status flags for each are directly available on pins.  The push and pop inputs as
well as data bus lines are multiplexed using the deque select line.

Hold `end_select` low to operate as a stack.  Tie `end_select` to `push` to operate
as a queue.

## How to test

To push (if `full` is low):

- Put the data byte on `data_in`
- Select which deque to push to with `deque_select`
- Select which end to push to with `end_select`
- Bring `push` high for one cycle

To pop (if `empty` is low):

- Select which deque to push to with `deque_select`
- Select which end to push to with `end_select`
- Bring `pop` high for one cycle

To replace the last element of the deque (if `empty` is low):

- Select which deque to push to with `deque_select`
- Select which end to push to with `end_select`
- Put the new data byte on `data_in`
- Bring both `push` and `pop` high for one cycle

To read the end of the deque:

- Select which deque to push to with `deque_select`
- Select which end to push to with `end_select`
- Wait one cycle
- Read end of deque from `data_out`

## External hardware

You would probably want to connect this to other devices that would find it useful.
