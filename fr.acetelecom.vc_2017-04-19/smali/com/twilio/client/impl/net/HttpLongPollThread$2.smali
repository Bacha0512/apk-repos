.class Lcom/twilio/client/impl/net/HttpLongPollThread$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twilio/client/impl/net/HttpLongPollThread;->receiveHeaders(Ljava/io/BufferedReader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twilio/client/impl/net/HttpLongPollThread;

.field final synthetic val$fStatusCode:I

.field final synthetic val$fStatusMessage:Ljava/lang/String;

.field final synthetic val$headers:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/twilio/client/impl/net/HttpLongPollThread;ILjava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/net/HttpLongPollThread$2;->this$0:Lcom/twilio/client/impl/net/HttpLongPollThread;

    iput p2, p0, Lcom/twilio/client/impl/net/HttpLongPollThread$2;->val$fStatusCode:I

    iput-object p3, p0, Lcom/twilio/client/impl/net/HttpLongPollThread$2;->val$fStatusMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/twilio/client/impl/net/HttpLongPollThread$2;->val$headers:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread$2;->this$0:Lcom/twilio/client/impl/net/HttpLongPollThread;

    iget-object v0, v0, Lcom/twilio/client/impl/net/HttpLongPollThread;->listener:Lcom/twilio/client/impl/net/LongPollConnection$Listener;

    iget v1, p0, Lcom/twilio/client/impl/net/HttpLongPollThread$2;->val$fStatusCode:I

    iget-object v2, p0, Lcom/twilio/client/impl/net/HttpLongPollThread$2;->val$fStatusMessage:Ljava/lang/String;

    iget-object v3, p0, Lcom/twilio/client/impl/net/HttpLongPollThread$2;->val$headers:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3}, Lcom/twilio/client/impl/net/LongPollConnection$Listener;->onHeadersReceived(ILjava/lang/String;Ljava/util/Map;)V

    return-void
.end method
