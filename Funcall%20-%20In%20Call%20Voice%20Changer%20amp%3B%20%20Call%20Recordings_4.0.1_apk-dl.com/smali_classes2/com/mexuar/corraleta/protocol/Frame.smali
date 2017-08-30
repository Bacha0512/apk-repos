.class abstract Lcom/mexuar/corraleta/protocol/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# static fields
.field static final EMPTY:[B


# instance fields
.field protected _call:Lcom/mexuar/corraleta/protocol/Call;

.field protected _data:Lcom/mexuar/corraleta/util/ByteBuffer;

.field protected _fullBit:Z

.field protected _sCall:I

.field protected _timestamp:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/mexuar/corraleta/protocol/Frame;->EMPTY:[B

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract ack()V
.end method

.method abstract arrived()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;
        }
    .end annotation
.end method

.method getTimestamp()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Frame;->_timestamp:Ljava/lang/Long;

    return-object v0
.end method

.method getTimestampVal()J
    .locals 3

    .prologue
    .line 79
    const-wide/16 v0, 0x0

    .line 80
    .local v0, "ret":J
    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/Frame;->_timestamp:Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/Frame;->_timestamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 83
    :cond_0
    return-wide v0
.end method

.method setTimestamp(Ljava/lang/Long;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/Long;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mexuar/corraleta/protocol/Frame;->_timestamp:Ljava/lang/Long;

    .line 68
    return-void
.end method

.method setTimestampVal(J)V
    .locals 1
    .param p1, "v"    # J

    .prologue
    .line 56
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/mexuar/corraleta/protocol/Frame;->_timestamp:Ljava/lang/Long;

    .line 57
    return-void
.end method
