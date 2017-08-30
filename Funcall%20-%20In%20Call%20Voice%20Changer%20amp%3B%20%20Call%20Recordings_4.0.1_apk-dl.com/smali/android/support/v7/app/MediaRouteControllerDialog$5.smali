.class Landroid/support/v7/app/MediaRouteControllerDialog$5;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/app/MediaRouteControllerDialog;

    .prologue
    .line 421
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$5;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 424
    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog$5;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$5;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-boolean v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Landroid/support/v7/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    .line 425
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$5;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-boolean v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$5;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/OverlayListView;->setVisibility(I)V

    .line 428
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$5;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->loadInterpolator()V

    .line 429
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$5;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateLayoutHeight(Z)V

    .line 430
    return-void

    :cond_1
    move v0, v2

    .line 424
    goto :goto_0
.end method
