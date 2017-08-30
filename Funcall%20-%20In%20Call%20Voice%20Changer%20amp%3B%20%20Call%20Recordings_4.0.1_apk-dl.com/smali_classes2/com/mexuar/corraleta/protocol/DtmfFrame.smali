.class Lcom/mexuar/corraleta/protocol/DtmfFrame;
.super Lcom/mexuar/corraleta/protocol/FullFrame;
.source "DtmfFrame.java"


# direct methods
.method constructor <init>(Lcom/mexuar/corraleta/protocol/Call;C)V
    .locals 3
    .param p1, "ca"    # Lcom/mexuar/corraleta/protocol/Call;
    .param p2, "c"    # C

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1}, Lcom/mexuar/corraleta/protocol/FullFrame;-><init>(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 37
    iput-boolean v2, p0, Lcom/mexuar/corraleta/protocol/DtmfFrame;->_retry:Z

    .line 38
    iput-boolean v2, p0, Lcom/mexuar/corraleta/protocol/DtmfFrame;->_cbit:Z

    .line 39
    const/4 v1, 0x1

    iput v1, p0, Lcom/mexuar/corraleta/protocol/DtmfFrame;->_frametype:I

    .line 40
    and-int/lit8 v1, p2, 0x7f

    iput v1, p0, Lcom/mexuar/corraleta/protocol/DtmfFrame;->_subclass:I

    .line 41
    new-array v0, v2, [B

    .line 42
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Lcom/mexuar/corraleta/protocol/DtmfFrame;->sendMe([B)V

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sent DTMF "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/DtmfFrame;->dump()V

    .line 45
    return-void
.end method


# virtual methods
.method ack()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
