.class Lcom/ironsource/sdk/controller/ControllerActivity$2;
.super Ljava/lang/Object;
.source "ControllerActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/ControllerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/ControllerActivity;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ironsource/sdk/controller/ControllerActivity;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity$2;->this$0:Lcom/ironsource/sdk/controller/ControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 106
    and-int/lit16 v0, p1, 0x1002

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity$2;->this$0:Lcom/ironsource/sdk/controller/ControllerActivity;

    # getter for: Lcom/ironsource/sdk/controller/ControllerActivity;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->access$200(Lcom/ironsource/sdk/controller/ControllerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity$2;->this$0:Lcom/ironsource/sdk/controller/ControllerActivity;

    # getter for: Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/ControllerActivity;->access$100(Lcom/ironsource/sdk/controller/ControllerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity$2;->this$0:Lcom/ironsource/sdk/controller/ControllerActivity;

    # getter for: Lcom/ironsource/sdk/controller/ControllerActivity;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->access$200(Lcom/ironsource/sdk/controller/ControllerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity$2;->this$0:Lcom/ironsource/sdk/controller/ControllerActivity;

    # getter for: Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/ControllerActivity;->access$100(Lcom/ironsource/sdk/controller/ControllerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    :cond_0
    return-void
.end method
