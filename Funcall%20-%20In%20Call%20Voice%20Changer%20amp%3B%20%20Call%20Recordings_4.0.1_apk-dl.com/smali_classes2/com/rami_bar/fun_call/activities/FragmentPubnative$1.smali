.class Lcom/rami_bar/fun_call/activities/FragmentPubnative$1;
.super Ljava/lang/Object;
.source "FragmentPubnative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentPubnative;->setDataToViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/FragmentPubnative;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentPubnative;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/FragmentPubnative;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative$1;->this$0:Lcom/rami_bar/fun_call/activities/FragmentPubnative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative$1;->this$0:Lcom/rami_bar/fun_call/activities/FragmentPubnative;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentPubnative;->srl_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->access$000(Lcom/rami_bar/fun_call/activities/FragmentPubnative;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 96
    return-void
.end method
