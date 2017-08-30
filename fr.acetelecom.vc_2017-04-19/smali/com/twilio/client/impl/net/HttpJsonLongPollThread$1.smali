.class Lcom/twilio/client/impl/net/HttpJsonLongPollThread$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twilio/client/impl/net/HttpJsonLongPollThread;->handleMessage(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twilio/client/impl/net/HttpJsonLongPollThread;

.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/twilio/client/impl/net/HttpJsonLongPollThread;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/net/HttpJsonLongPollThread$1;->this$0:Lcom/twilio/client/impl/net/HttpJsonLongPollThread;

    iput-object p2, p0, Lcom/twilio/client/impl/net/HttpJsonLongPollThread$1;->val$params:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/twilio/client/impl/net/HttpJsonLongPollThread$1;->this$0:Lcom/twilio/client/impl/net/HttpJsonLongPollThread;

    iget-object v0, v0, Lcom/twilio/client/impl/net/HttpJsonLongPollThread;->listener:Lcom/twilio/client/impl/net/LongPollConnection$Listener;

    iget-object v1, p0, Lcom/twilio/client/impl/net/HttpJsonLongPollThread$1;->val$params:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/twilio/client/impl/net/LongPollConnection$Listener;->onMessageReceived(Ljava/util/Map;)V

    return-void
.end method
