.class Lcom/weirdvoice/ui/incall/InCallActivity$UpdateVideoPreviewRunnable;
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
    name = "UpdateVideoPreviewRunnable"
.end annotation


# instance fields
.field private final show:Z

.field final synthetic this$0:Lcom/weirdvoice/ui/incall/InCallActivity;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/incall/InCallActivity;Z)V
    .locals 0
    .param p2, "show"    # Z

    .prologue
    .line 574
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateVideoPreviewRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    iput-boolean p2, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateVideoPreviewRunnable;->show:Z

    .line 576
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 594
    const-string v0, "InCallActivity"

    const-string v1, "No camera preview available to be shown"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    return-void
.end method
