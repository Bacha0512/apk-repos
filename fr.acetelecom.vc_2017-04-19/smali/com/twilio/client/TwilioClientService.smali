.class public Lcom/twilio/client/TwilioClientService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/TwilioClientService$TwilioBinder;
    }
.end annotation


# static fields
.field private static final logger:Lcom/twilio/client/impl/logging/Logger;


# instance fields
.field private final binder:Lcom/twilio/client/TwilioClientService$TwilioBinder;

.field private lastStartId:I

.field private serviceImpl:Lcom/twilio/client/impl/TwilioClientServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/twilio/client/TwilioClientService;

    invoke-static {v0}, Lcom/twilio/client/impl/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/twilio/client/impl/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/TwilioClientService;->logger:Lcom/twilio/client/impl/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/twilio/client/TwilioClientService$TwilioBinder;

    invoke-direct {v0, p0}, Lcom/twilio/client/TwilioClientService$TwilioBinder;-><init>(Lcom/twilio/client/TwilioClientService;)V

    iput-object v0, p0, Lcom/twilio/client/TwilioClientService;->binder:Lcom/twilio/client/TwilioClientService$TwilioBinder;

    const/4 v0, -0x1

    iput v0, p0, Lcom/twilio/client/TwilioClientService;->lastStartId:I

    return-void
.end method

.method static synthetic access$000(Lcom/twilio/client/TwilioClientService;)Lcom/twilio/client/impl/TwilioClientServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/TwilioClientService;->serviceImpl:Lcom/twilio/client/impl/TwilioClientServiceImpl;

    return-object v0
.end method

.method private initServiceImpl()V
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/TwilioClientService;->serviceImpl:Lcom/twilio/client/impl/TwilioClientServiceImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/twilio/client/impl/TwilioClientServiceImpl;

    invoke-direct {v0}, Lcom/twilio/client/impl/TwilioClientServiceImpl;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/TwilioClientService;->serviceImpl:Lcom/twilio/client/impl/TwilioClientServiceImpl;

    iget-object v0, p0, Lcom/twilio/client/TwilioClientService;->serviceImpl:Lcom/twilio/client/impl/TwilioClientServiceImpl;

    invoke-virtual {v0, p0}, Lcom/twilio/client/impl/TwilioClientServiceImpl;->initialize(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/TwilioClientService;->binder:Lcom/twilio/client/TwilioClientService$TwilioBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    invoke-direct {p0}, Lcom/twilio/client/TwilioClientService;->initServiceImpl()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/TwilioClientService;->serviceImpl:Lcom/twilio/client/impl/TwilioClientServiceImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/TwilioClientService;->serviceImpl:Lcom/twilio/client/impl/TwilioClientServiceImpl;

    invoke-virtual {v0}, Lcom/twilio/client/impl/TwilioClientServiceImpl;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twilio/client/TwilioClientService;->serviceImpl:Lcom/twilio/client/impl/TwilioClientServiceImpl;

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    invoke-direct {p0}, Lcom/twilio/client/TwilioClientService;->initServiceImpl()V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/TwilioClientService;->serviceImpl:Lcom/twilio/client/impl/TwilioClientServiceImpl;

    iget-object v1, p0, Lcom/twilio/client/TwilioClientService;->binder:Lcom/twilio/client/TwilioClientService$TwilioBinder;

    invoke-virtual {v0, p1, v1}, Lcom/twilio/client/impl/TwilioClientServiceImpl;->restoreState(Landroid/content/Intent;Lcom/twilio/client/TwilioClientService$TwilioBinder;)V

    :cond_0
    iget v0, p0, Lcom/twilio/client/TwilioClientService;->lastStartId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/twilio/client/TwilioClientService;->lastStartId:I

    invoke-virtual {p0, v0}, Lcom/twilio/client/TwilioClientService;->stopSelfResult(I)Z

    :cond_1
    iput p3, p0, Lcom/twilio/client/TwilioClientService;->lastStartId:I

    const/4 v0, 0x3

    return v0
.end method
