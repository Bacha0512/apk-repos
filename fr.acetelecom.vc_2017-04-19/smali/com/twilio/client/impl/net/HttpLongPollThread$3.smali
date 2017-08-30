.class Lcom/twilio/client/impl/net/HttpLongPollThread$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twilio/client/impl/net/HttpLongPollThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twilio/client/impl/net/HttpLongPollThread;

.field final synthetic val$reportedException:Ljava/lang/Exception;

.field final synthetic val$willRetry:Z


# direct methods
.method constructor <init>(Lcom/twilio/client/impl/net/HttpLongPollThread;Ljava/lang/Exception;Z)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/net/HttpLongPollThread$3;->this$0:Lcom/twilio/client/impl/net/HttpLongPollThread;

    iput-object p2, p0, Lcom/twilio/client/impl/net/HttpLongPollThread$3;->val$reportedException:Ljava/lang/Exception;

    iput-boolean p3, p0, Lcom/twilio/client/impl/net/HttpLongPollThread$3;->val$willRetry:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread$3;->val$reportedException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread$3;->this$0:Lcom/twilio/client/impl/net/HttpLongPollThread;

    iget-object v0, v0, Lcom/twilio/client/impl/net/HttpLongPollThread;->listener:Lcom/twilio/client/impl/net/LongPollConnection$Listener;

    iget-object v1, p0, Lcom/twilio/client/impl/net/HttpLongPollThread$3;->val$reportedException:Ljava/lang/Exception;

    iget-boolean v2, p0, Lcom/twilio/client/impl/net/HttpLongPollThread$3;->val$willRetry:Z

    invoke-interface {v0, v1, v2}, Lcom/twilio/client/impl/net/LongPollConnection$Listener;->onError(Ljava/lang/Exception;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread$3;->this$0:Lcom/twilio/client/impl/net/HttpLongPollThread;

    iget-object v0, v0, Lcom/twilio/client/impl/net/HttpLongPollThread;->listener:Lcom/twilio/client/impl/net/LongPollConnection$Listener;

    invoke-interface {v0}, Lcom/twilio/client/impl/net/LongPollConnection$Listener;->onDisconnected()V

    goto :goto_0
.end method
