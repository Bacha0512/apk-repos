.class public Lcom/twilio/client/impl/session/Transport;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/session/Transport$StateInfo;,
        Lcom/twilio/client/impl/session/Transport$State;,
        Lcom/twilio/client/impl/session/Transport$Type;
    }
.end annotation


# instance fields
.field private transportId:I

.field private transportPtr:J

.field private type:Lcom/twilio/client/impl/session/Transport$Type;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/twilio/client/impl/session/Transport;->transportId:I

    return-void
.end method

.method private native addRef(J)V
.end method

.method private native close(ZIJ)V
.end method

.method private native decRef(J)V
.end method


# virtual methods
.method public addRef()V
    .locals 2

    iget-wide v0, p0, Lcom/twilio/client/impl/session/Transport;->transportPtr:J

    invoke-direct {p0, v0, v1}, Lcom/twilio/client/impl/session/Transport;->addRef(J)V

    return-void
.end method

.method public declared-synchronized close(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/twilio/client/impl/session/Transport;->transportId:I

    iget-wide v2, p0, Lcom/twilio/client/impl/session/Transport;->transportPtr:J

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/twilio/client/impl/session/Transport;->close(ZIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public decRef()V
    .locals 2

    iget-wide v0, p0, Lcom/twilio/client/impl/session/Transport;->transportPtr:J

    invoke-direct {p0, v0, v1}, Lcom/twilio/client/impl/session/Transport;->decRef(J)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lcom/twilio/client/impl/session/Transport;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/twilio/client/impl/session/Transport;

    iget v2, p0, Lcom/twilio/client/impl/session/Transport;->transportId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v2, p1, Lcom/twilio/client/impl/session/Transport;->transportId:I

    iget v3, p0, Lcom/twilio/client/impl/session/Transport;->transportId:I

    if-ne v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/twilio/client/impl/session/Transport;->transportPtr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p1, Lcom/twilio/client/impl/session/Transport;->transportPtr:J

    iget-wide v4, p0, Lcom/twilio/client/impl/session/Transport;->transportPtr:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getTransportId()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/session/Transport;->transportId:I

    return v0
.end method

.method public getType()Lcom/twilio/client/impl/session/Transport$Type;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/session/Transport;->type:Lcom/twilio/client/impl/session/Transport$Type;

    return-object v0
.end method
