.class public Lcom/twilio/client/impl/MuteCallCommand;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field connection:Lcom/twilio/client/impl/InternalConnection;

.field mute:Z


# direct methods
.method public constructor <init>(Lcom/twilio/client/impl/InternalConnection;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twilio/client/impl/MuteCallCommand;->connection:Lcom/twilio/client/impl/InternalConnection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twilio/client/impl/MuteCallCommand;->mute:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection must be non-null when muting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lcom/twilio/client/impl/InternalConnection;->getCallHandle()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CallHandle must be non-null when muting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/twilio/client/impl/MuteCallCommand;->connection:Lcom/twilio/client/impl/InternalConnection;

    iput-boolean p2, p0, Lcom/twilio/client/impl/MuteCallCommand;->mute:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/MuteCallCommand;->connection:Lcom/twilio/client/impl/InternalConnection;

    invoke-interface {v0}, Lcom/twilio/client/impl/InternalConnection;->getCallHandle()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/useragent/Call;

    invoke-virtual {v0}, Lcom/twilio/client/impl/useragent/Call;->getConfPort()Lcom/twilio/client/impl/useragent/ConfPort;

    move-result-object v1

    iget-boolean v0, p0, Lcom/twilio/client/impl/MuteCallCommand;->mute:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twilio/client/impl/useragent/ConfPort;->adjustTxLevel(F)V
    :try_end_0
    .catch Lcom/twilio/client/impl/session/SessionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
