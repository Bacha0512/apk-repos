.class Lcom/rami_bar/fun_call/activities/ActivityMain$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivityMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rami_bar/fun_call/activities/ActivityMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;


# direct methods
.method private constructor <init>(Lcom/rami_bar/fun_call/activities/ActivityMain;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$Receiver;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rami_bar/fun_call/activities/ActivityMain;Lcom/rami_bar/fun_call/activities/ActivityMain$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;
    .param p2, "x1"    # Lcom/rami_bar/fun_call/activities/ActivityMain$1;

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/activities/ActivityMain$Receiver;-><init>(Lcom/rami_bar/fun_call/activities/ActivityMain;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$Receiver;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->getCallerInfo()V
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$200(Lcom/rami_bar/fun_call/activities/ActivityMain;)V

    .line 256
    return-void
.end method
