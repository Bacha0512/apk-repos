.class Lcom/twilio/client/impl/net/HttpLongPollThread$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twilio/client/impl/net/HttpLongPollThread;->setUpSocket()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twilio/client/impl/net/HttpLongPollThread;


# direct methods
.method constructor <init>(Lcom/twilio/client/impl/net/HttpLongPollThread;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/net/HttpLongPollThread$1;->this$0:Lcom/twilio/client/impl/net/HttpLongPollThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread$1;->this$0:Lcom/twilio/client/impl/net/HttpLongPollThread;

    iget-object v0, v0, Lcom/twilio/client/impl/net/HttpLongPollThread;->listener:Lcom/twilio/client/impl/net/LongPollConnection$Listener;

    invoke-interface {v0}, Lcom/twilio/client/impl/net/LongPollConnection$Listener;->onConnected()V

    return-void
.end method
