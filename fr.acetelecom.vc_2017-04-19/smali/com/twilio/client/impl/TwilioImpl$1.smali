.class Lcom/twilio/client/impl/TwilioImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twilio/client/impl/TwilioImpl;->initialize(Landroid/content/Context;Lcom/twilio/client/Twilio$InitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twilio/client/impl/TwilioImpl;

.field final synthetic val$inListener:Lcom/twilio/client/Twilio$InitListener;

.field final synthetic val$service:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/twilio/client/impl/TwilioImpl;Landroid/content/Intent;Lcom/twilio/client/Twilio$InitListener;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/TwilioImpl$1;->this$0:Lcom/twilio/client/impl/TwilioImpl;

    iput-object p2, p0, Lcom/twilio/client/impl/TwilioImpl$1;->val$service:Landroid/content/Intent;

    iput-object p3, p0, Lcom/twilio/client/impl/TwilioImpl$1;->val$inListener:Lcom/twilio/client/Twilio$InitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    sget-object v0, Lcom/twilio/client/impl/TwilioImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/twilio/client/impl/TwilioImpl$1;->val$service:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl$1;->this$0:Lcom/twilio/client/impl/TwilioImpl;

    check-cast p2, Lcom/twilio/client/TwilioClientService$TwilioBinder;

    iput-object p2, v0, Lcom/twilio/client/impl/TwilioImpl;->twBinder:Lcom/twilio/client/TwilioClientService$TwilioBinder;

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl$1;->this$0:Lcom/twilio/client/impl/TwilioImpl;

    iget-object v1, p0, Lcom/twilio/client/impl/TwilioImpl$1;->this$0:Lcom/twilio/client/impl/TwilioImpl;

    iget-object v1, v1, Lcom/twilio/client/impl/TwilioImpl;->twBinder:Lcom/twilio/client/TwilioClientService$TwilioBinder;

    invoke-virtual {v1}, Lcom/twilio/client/TwilioClientService$TwilioBinder;->getCallManager()Lcom/twilio/client/impl/CallControlManager;

    move-result-object v1

    iput-object v1, v0, Lcom/twilio/client/impl/TwilioImpl;->callControlManager:Lcom/twilio/client/impl/CallControlManager;

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl$1;->this$0:Lcom/twilio/client/impl/TwilioImpl;

    iget-object v0, v0, Lcom/twilio/client/impl/TwilioImpl;->callControlManager:Lcom/twilio/client/impl/CallControlManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl$1;->this$0:Lcom/twilio/client/impl/TwilioImpl;

    iget-object v1, p0, Lcom/twilio/client/impl/TwilioImpl$1;->this$0:Lcom/twilio/client/impl/TwilioImpl;

    iget-object v1, v1, Lcom/twilio/client/impl/TwilioImpl;->twBinder:Lcom/twilio/client/TwilioClientService$TwilioBinder;

    invoke-virtual {v1}, Lcom/twilio/client/TwilioClientService$TwilioBinder;->getEventStreamManager()Lcom/twilio/client/impl/net/EventStreamManager;

    move-result-object v1

    iput-object v1, v0, Lcom/twilio/client/impl/TwilioImpl;->eventStreamFactory:Lcom/twilio/client/impl/net/EventStreamFactory;

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl$1;->this$0:Lcom/twilio/client/impl/TwilioImpl;

    iget-object v1, p0, Lcom/twilio/client/impl/TwilioImpl$1;->this$0:Lcom/twilio/client/impl/TwilioImpl;

    iget-object v1, v1, Lcom/twilio/client/impl/TwilioImpl;->twBinder:Lcom/twilio/client/TwilioClientService$TwilioBinder;

    invoke-virtual {v1}, Lcom/twilio/client/TwilioClientService$TwilioBinder;->getMediaManager()Lcom/twilio/client/impl/MediaManager;

    move-result-object v1

    iput-object v1, v0, Lcom/twilio/client/impl/TwilioImpl;->mediaManager:Lcom/twilio/client/impl/MediaManager;

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl$1;->this$0:Lcom/twilio/client/impl/TwilioImpl;

    # getter for: Lcom/twilio/client/impl/TwilioImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/twilio/client/impl/TwilioImpl;->access$000(Lcom/twilio/client/impl/TwilioImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/twilio/client/impl/TwilioImpl$State;->INITIALIZED:Lcom/twilio/client/impl/TwilioImpl$State;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    # getter for: Lcom/twilio/client/impl/TwilioImpl;->cachedLogLevel:I
    invoke-static {}, Lcom/twilio/client/impl/TwilioImpl;->access$100()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl$1;->this$0:Lcom/twilio/client/impl/TwilioImpl;

    iget-object v0, v0, Lcom/twilio/client/impl/TwilioImpl;->callControlManager:Lcom/twilio/client/impl/CallControlManager;

    # getter for: Lcom/twilio/client/impl/TwilioImpl;->cachedLogLevel:I
    invoke-static {}, Lcom/twilio/client/impl/TwilioImpl;->access$100()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/CallControlManager;->setLogLevel(I)V

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl$1;->val$inListener:Lcom/twilio/client/Twilio$InitListener;

    invoke-interface {v0}, Lcom/twilio/client/Twilio$InitListener;->onInitialized()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl$1;->this$0:Lcom/twilio/client/impl/TwilioImpl;

    iget-object v0, v0, Lcom/twilio/client/impl/TwilioImpl;->twBinder:Lcom/twilio/client/TwilioClientService$TwilioBinder;

    invoke-virtual {v0}, Lcom/twilio/client/TwilioClientService$TwilioBinder;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/twilio/client/impl/TwilioImpl$1;->onServiceDisconnected(Landroid/content/ComponentName;)V

    iget-object v1, p0, Lcom/twilio/client/impl/TwilioImpl$1;->val$inListener:Lcom/twilio/client/Twilio$InitListener;

    invoke-interface {v1, v0}, Lcom/twilio/client/Twilio$InitListener;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl$1;->this$0:Lcom/twilio/client/impl/TwilioImpl;

    # getter for: Lcom/twilio/client/impl/TwilioImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/twilio/client/impl/TwilioImpl;->access$000(Lcom/twilio/client/impl/TwilioImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/twilio/client/impl/TwilioImpl$State;->UNINITIALIZED:Lcom/twilio/client/impl/TwilioImpl$State;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl$1;->this$0:Lcom/twilio/client/impl/TwilioImpl;

    iput-object v2, v0, Lcom/twilio/client/impl/TwilioImpl;->callControlManager:Lcom/twilio/client/impl/CallControlManager;

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl$1;->this$0:Lcom/twilio/client/impl/TwilioImpl;

    iput-object v2, v0, Lcom/twilio/client/impl/TwilioImpl;->eventStreamFactory:Lcom/twilio/client/impl/net/EventStreamFactory;

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl$1;->this$0:Lcom/twilio/client/impl/TwilioImpl;

    iput-object v2, v0, Lcom/twilio/client/impl/TwilioImpl;->twBinder:Lcom/twilio/client/TwilioClientService$TwilioBinder;

    sput-object v2, Lcom/twilio/client/impl/TwilioImpl;->context:Landroid/content/Context;

    return-void
.end method
