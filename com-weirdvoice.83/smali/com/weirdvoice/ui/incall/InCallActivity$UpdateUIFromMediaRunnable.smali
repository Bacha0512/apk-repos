.class Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;
.super Ljava/lang/Object;
.source "InCallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/incall/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateUIFromMediaRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/incall/InCallActivity;


# direct methods
.method private constructor <init>(Lcom/weirdvoice/ui/incall/InCallActivity;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/weirdvoice/ui/incall/InCallActivity;Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;)V
    .locals 0

    .prologue
    .line 564
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;-><init>(Lcom/weirdvoice/ui/incall/InCallActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->inCallControls:Lcom/weirdvoice/ui/incall/InCallControls;
    invoke-static {v0}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$14(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/ui/incall/InCallControls;

    move-result-object v0

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->lastMediaState:Lcom/weirdvoice/api/MediaState;
    invoke-static {v1}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$8(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/api/MediaState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/InCallControls;->setMediaState(Lcom/weirdvoice/api/MediaState;)V

    .line 568
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->proximityManager:Lcom/weirdvoice/ui/incall/CallProximityManager;
    invoke-static {v0}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$21(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/ui/incall/CallProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/CallProximityManager;->updateProximitySensorMode()V

    .line 569
    return-void
.end method
