.class Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;
.super Ljava/util/ArrayList;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x57b2878d90ed8b98L


# instance fields
.field private mSuspended:Z

.field final synthetic this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;


# direct methods
.method private constructor <init>(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->this$0:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 157
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->clear()V

    .line 162
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;

    .line 159
    .local v0, "anim":Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setSuspended(Z)V
    .locals 0
    .param p1, "suspend"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->mSuspended:Z

    .line 175
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 147
    iget-boolean v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->mSuspended:Z

    if-eqz v3, :cond_1

    .line 153
    :cond_0
    return-void

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 149
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 150
    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;

    .line 151
    .local v0, "anim":Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 166
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->clear()V

    .line 171
    return-void

    .line 167
    :cond_0
    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;

    .line 168
    .local v0, "anim":Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->end()V

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
