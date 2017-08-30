.class public Lcom/mexuar/corraleta/protocol/ControlFrame;
.super Lcom/mexuar/corraleta/protocol/FullFrame;
.source "ControlFrame.java"


# static fields
.field static final ANSWER:I = 0x4

.field static final BUSY:I = 0x5

.field static final CALLPROCEEDING:I = 0xf

.field static final CALLPROGRESS:I = 0xe

.field static final CONGESTION:I = 0x8

.field static final FLASH:I = 0x9

.field static final HANGUP:I = 0x1

.field static final HOLD:I = 0x10

.field static final KEYRADIO:I = 0xc

.field static final OLD_RING:I = 0x2

.field static final OLD_WINK:I = 0xa

.field static final OPTION:I = 0xb

.field static final RINGING:I = 0x3

.field static final UNHOLD:I = 0x11

.field static final UNKEYRADIO:I = 0xd

.field static controlTypes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 47
    const-string v2, "ZERO"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 48
    const-string v2, "Hangup"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 49
    const-string v2, "Reserved"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 50
    const-string v2, "Ringing"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 51
    const-string v2, "Answer"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 52
    const-string v2, "Busy"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 53
    const-string v2, "Reserved"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 54
    const-string v2, "Reserved"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 55
    const-string v2, "Congestion"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 56
    const-string v2, "Flash Hook"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 57
    const-string v2, "Reserved"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 58
    const-string v2, "Option"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 59
    const-string v2, "Key Radio"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 60
    const-string v2, "Unkey Radio"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 61
    const-string v2, "Call Progress"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 62
    const-string v2, "Call Proceeding"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 63
    const-string v2, "Hold"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 64
    const-string v2, "Unhold"

    aput-object v2, v0, v1

    .line 46
    sput-object v0, Lcom/mexuar/corraleta/protocol/ControlFrame;->controlTypes:[Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/mexuar/corraleta/protocol/Call;)V
    .locals 1
    .param p1, "p0"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mexuar/corraleta/protocol/FullFrame;-><init>(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 76
    const/4 v0, 0x4

    iput v0, p0, Lcom/mexuar/corraleta/protocol/ControlFrame;->_frametype:I

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/mexuar/corraleta/protocol/Call;[B)V
    .locals 0
    .param p1, "p0"    # Lcom/mexuar/corraleta/protocol/Call;
    .param p2, "p1"    # [B

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/mexuar/corraleta/protocol/FullFrame;-><init>(Lcom/mexuar/corraleta/protocol/Call;[B)V

    .line 88
    return-void
.end method


# virtual methods
.method ack()V
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/mexuar/corraleta/protocol/ControlFrame;->_subclass:I

    packed-switch v0, :pswitch_data_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled Control Frame "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mexuar/corraleta/protocol/ControlFrame;->_subclass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mexuar/corraleta/protocol/Log;->warn(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/ControlFrame;->sendAck()V

    .line 109
    :goto_0
    const-string v0, "got"

    invoke-virtual {p0, v0}, Lcom/mexuar/corraleta/protocol/ControlFrame;->log(Ljava/lang/String;)V

    .line 110
    return-void

    .line 97
    :pswitch_0
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/ControlFrame;->sendAck()V

    .line 98
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/ControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/Call;->setRinging()V

    goto :goto_0

    .line 101
    :pswitch_1
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/ControlFrame;->sendAck()V

    .line 102
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/ControlFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/protocol/Call;->setAnswered(Z)V

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method arrived()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;
        }
    .end annotation

    .prologue
    .line 148
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "inout"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "bu":Ljava/lang/StringBuffer;
    const-string v1, " Control Frame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    iget v1, p0, Lcom/mexuar/corraleta/protocol/ControlFrame;->_subclass:I

    sget-object v2, Lcom/mexuar/corraleta/protocol/ControlFrame;->controlTypes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/mexuar/corraleta/protocol/ControlFrame;->_subclass:I

    if-ltz v1, :cond_0

    .line 132
    sget-object v1, Lcom/mexuar/corraleta/protocol/ControlFrame;->controlTypes:[Ljava/lang/String;

    iget v2, p0, Lcom/mexuar/corraleta/protocol/ControlFrame;->_subclass:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/mexuar/corraleta/protocol/FullFrame;->log(Ljava/lang/String;)V

    .line 137
    return-void

    .line 134
    :cond_0
    iget v1, p0, Lcom/mexuar/corraleta/protocol/ControlFrame;->_subclass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public sendAnswer()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x4

    iput v0, p0, Lcom/mexuar/corraleta/protocol/ControlFrame;->_subclass:I

    .line 118
    const-string v0, "Sending Answer"

    invoke-static {v0}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 119
    sget-object v0, Lcom/mexuar/corraleta/protocol/ControlFrame;->EMPTY:[B

    invoke-virtual {p0, v0}, Lcom/mexuar/corraleta/protocol/ControlFrame;->sendMe([B)V

    .line 120
    return-void
.end method
