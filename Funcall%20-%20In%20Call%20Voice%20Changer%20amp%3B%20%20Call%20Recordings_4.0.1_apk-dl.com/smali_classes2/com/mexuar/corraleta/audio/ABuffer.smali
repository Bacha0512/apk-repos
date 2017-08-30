.class public Lcom/mexuar/corraleta/audio/ABuffer;
.super Ljava/lang/Object;
.source "ABuffer.java"


# instance fields
.field private _astamp:J

.field private _buff:[B

.field private _stamp:J

.field private _written:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "sz"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/mexuar/corraleta/audio/ABuffer;->_buff:[B

    .line 39
    return-void
.end method


# virtual methods
.method public getAStamp()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/mexuar/corraleta/audio/ABuffer;->_astamp:J

    return-wide v0
.end method

.method public getBuff()[B
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mexuar/corraleta/audio/ABuffer;->_buff:[B

    return-object v0
.end method

.method public getStamp()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/mexuar/corraleta/audio/ABuffer;->_stamp:J

    return-wide v0
.end method

.method public isWritten()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/mexuar/corraleta/audio/ABuffer;->_written:Z

    return v0
.end method

.method public setAStamp(J)V
    .locals 1
    .param p1, "as"    # J

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/mexuar/corraleta/audio/ABuffer;->_astamp:J

    .line 64
    return-void
.end method

.method public setRead()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mexuar/corraleta/audio/ABuffer;->_written:Z

    .line 51
    return-void
.end method

.method public setStamp(J)V
    .locals 1
    .param p1, "stamp"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/mexuar/corraleta/audio/ABuffer;->_stamp:J

    .line 57
    return-void
.end method

.method public setWritten()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mexuar/corraleta/audio/ABuffer;->_written:Z

    .line 48
    return-void
.end method
