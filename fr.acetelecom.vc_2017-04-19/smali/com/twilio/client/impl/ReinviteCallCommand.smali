.class public Lcom/twilio/client/impl/ReinviteCallCommand;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final logger:Lcom/twilio/client/impl/logging/Logger;


# instance fields
.field private final account:Lcom/twilio/client/impl/session/Account;

.field private final call:Lcom/twilio/client/impl/useragent/Call;

.field private final sipUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/twilio/client/impl/ReinviteCallCommand;

    invoke-static {v0}, Lcom/twilio/client/impl/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/twilio/client/impl/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/ReinviteCallCommand;->logger:Lcom/twilio/client/impl/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/twilio/client/impl/useragent/Call;Lcom/twilio/client/impl/session/Account;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twilio/client/impl/ReinviteCallCommand;->call:Lcom/twilio/client/impl/useragent/Call;

    iput-object p2, p0, Lcom/twilio/client/impl/ReinviteCallCommand;->account:Lcom/twilio/client/impl/session/Account;

    iput-object p3, p0, Lcom/twilio/client/impl/ReinviteCallCommand;->sipUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/ReinviteCallCommand;->call:Lcom/twilio/client/impl/useragent/Call;

    iget-object v1, p0, Lcom/twilio/client/impl/ReinviteCallCommand;->account:Lcom/twilio/client/impl/session/Account;

    iget-object v2, p0, Lcom/twilio/client/impl/ReinviteCallCommand;->sipUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twilio/client/impl/useragent/Call;->sendReinvite(Lcom/twilio/client/impl/session/Account;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/twilio/client/impl/session/SessionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/twilio/client/impl/ReinviteCallCommand;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "Failed to update call on IP address change; call will not be notified if the other party hangs up"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
