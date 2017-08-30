.class public Lcom/twilio/client/TwilioClientService$TwilioBinder;
.super Landroid/os/Binder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/TwilioClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwilioBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twilio/client/TwilioClientService;


# direct methods
.method public constructor <init>(Lcom/twilio/client/TwilioClientService;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/TwilioClientService$TwilioBinder;->this$0:Lcom/twilio/client/TwilioClientService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallManager()Lcom/twilio/client/impl/CallControlManager;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/TwilioClientService$TwilioBinder;->this$0:Lcom/twilio/client/TwilioClientService;

    # getter for: Lcom/twilio/client/TwilioClientService;->serviceImpl:Lcom/twilio/client/impl/TwilioClientServiceImpl;
    invoke-static {v0}, Lcom/twilio/client/TwilioClientService;->access$000(Lcom/twilio/client/TwilioClientService;)Lcom/twilio/client/impl/TwilioClientServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/TwilioClientServiceImpl;->getCallManager()Lcom/twilio/client/impl/CallControlManager;

    move-result-object v0

    return-object v0
.end method

.method public getError()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/TwilioClientService$TwilioBinder;->this$0:Lcom/twilio/client/TwilioClientService;

    # getter for: Lcom/twilio/client/TwilioClientService;->serviceImpl:Lcom/twilio/client/impl/TwilioClientServiceImpl;
    invoke-static {v0}, Lcom/twilio/client/TwilioClientService;->access$000(Lcom/twilio/client/TwilioClientService;)Lcom/twilio/client/impl/TwilioClientServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/TwilioClientServiceImpl;->getCallManagerError()Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method public getEventStreamManager()Lcom/twilio/client/impl/net/EventStreamManager;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/TwilioClientService$TwilioBinder;->this$0:Lcom/twilio/client/TwilioClientService;

    # getter for: Lcom/twilio/client/TwilioClientService;->serviceImpl:Lcom/twilio/client/impl/TwilioClientServiceImpl;
    invoke-static {v0}, Lcom/twilio/client/TwilioClientService;->access$000(Lcom/twilio/client/TwilioClientService;)Lcom/twilio/client/impl/TwilioClientServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/TwilioClientServiceImpl;->getEventStreamManager()Lcom/twilio/client/impl/net/EventStreamManager;

    move-result-object v0

    return-object v0
.end method

.method public getMediaManager()Lcom/twilio/client/impl/MediaManager;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/TwilioClientService$TwilioBinder;->this$0:Lcom/twilio/client/TwilioClientService;

    # getter for: Lcom/twilio/client/TwilioClientService;->serviceImpl:Lcom/twilio/client/impl/TwilioClientServiceImpl;
    invoke-static {v0}, Lcom/twilio/client/TwilioClientService;->access$000(Lcom/twilio/client/TwilioClientService;)Lcom/twilio/client/impl/TwilioClientServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/TwilioClientServiceImpl;->getMediaManager()Lcom/twilio/client/impl/MediaManager;

    move-result-object v0

    return-object v0
.end method
