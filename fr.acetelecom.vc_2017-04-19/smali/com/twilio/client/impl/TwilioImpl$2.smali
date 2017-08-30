.class Lcom/twilio/client/impl/TwilioImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twilio/client/impl/TwilioImpl;->reverseInitialize(Landroid/content/Context;Lcom/twilio/client/TwilioClientService$TwilioBinder;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twilio/client/impl/TwilioImpl;


# direct methods
.method constructor <init>(Lcom/twilio/client/impl/TwilioImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/TwilioImpl$2;->this$0:Lcom/twilio/client/impl/TwilioImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl$2;->this$0:Lcom/twilio/client/impl/TwilioImpl;

    # getter for: Lcom/twilio/client/impl/TwilioImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/twilio/client/impl/TwilioImpl;->access$000(Lcom/twilio/client/impl/TwilioImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/twilio/client/impl/TwilioImpl$State;->UNINITIALIZED:Lcom/twilio/client/impl/TwilioImpl$State;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl$2;->this$0:Lcom/twilio/client/impl/TwilioImpl;

    iput-object v2, v0, Lcom/twilio/client/impl/TwilioImpl;->callControlManager:Lcom/twilio/client/impl/CallControlManager;

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl$2;->this$0:Lcom/twilio/client/impl/TwilioImpl;

    iput-object v2, v0, Lcom/twilio/client/impl/TwilioImpl;->eventStreamFactory:Lcom/twilio/client/impl/net/EventStreamFactory;

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl$2;->this$0:Lcom/twilio/client/impl/TwilioImpl;

    iput-object v2, v0, Lcom/twilio/client/impl/TwilioImpl;->mediaManager:Lcom/twilio/client/impl/MediaManager;

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl$2;->this$0:Lcom/twilio/client/impl/TwilioImpl;

    iput-object v2, v0, Lcom/twilio/client/impl/TwilioImpl;->twBinder:Lcom/twilio/client/TwilioClientService$TwilioBinder;

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl$2;->this$0:Lcom/twilio/client/impl/TwilioImpl;

    sput-object v2, Lcom/twilio/client/impl/TwilioImpl;->context:Landroid/content/Context;

    return-void
.end method
