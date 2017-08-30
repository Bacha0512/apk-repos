.class public Lcom/rd/animation/controller/ValueController;
.super Ljava/lang/Object;
.source "ValueController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rd/animation/controller/ValueController$UpdateListener;
    }
.end annotation


# instance fields
.field private colorAnimation:Lcom/rd/animation/type/ColorAnimation;

.field private dropAnimation:Lcom/rd/animation/type/DropAnimation;

.field private fillAnimation:Lcom/rd/animation/type/FillAnimation;

.field private scaleAnimation:Lcom/rd/animation/type/ScaleAnimation;

.field private slideAnimation:Lcom/rd/animation/type/SlideAnimation;

.field private swapAnimation:Lcom/rd/animation/type/SwapAnimation;

.field private thinWormAnimation:Lcom/rd/animation/type/ThinWormAnimation;

.field private updateListener:Lcom/rd/animation/controller/ValueController$UpdateListener;

.field private wormAnimation:Lcom/rd/animation/type/WormAnimation;


# direct methods
.method public constructor <init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/rd/animation/controller/ValueController$UpdateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/rd/animation/controller/ValueController;->updateListener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    .line 27
    return-void
.end method


# virtual methods
.method public color()Lcom/rd/animation/type/ColorAnimation;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->colorAnimation:Lcom/rd/animation/type/ColorAnimation;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/rd/animation/type/ColorAnimation;

    iget-object v1, p0, Lcom/rd/animation/controller/ValueController;->updateListener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/rd/animation/type/ColorAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/rd/animation/controller/ValueController;->colorAnimation:Lcom/rd/animation/type/ColorAnimation;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->colorAnimation:Lcom/rd/animation/type/ColorAnimation;

    return-object v0
.end method

.method public drop()Lcom/rd/animation/type/DropAnimation;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->dropAnimation:Lcom/rd/animation/type/DropAnimation;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/rd/animation/type/DropAnimation;

    iget-object v1, p0, Lcom/rd/animation/controller/ValueController;->updateListener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/rd/animation/type/DropAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/rd/animation/controller/ValueController;->dropAnimation:Lcom/rd/animation/type/DropAnimation;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->dropAnimation:Lcom/rd/animation/type/DropAnimation;

    return-object v0
.end method

.method public fill()Lcom/rd/animation/type/FillAnimation;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->fillAnimation:Lcom/rd/animation/type/FillAnimation;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/rd/animation/type/FillAnimation;

    iget-object v1, p0, Lcom/rd/animation/controller/ValueController;->updateListener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/rd/animation/type/FillAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/rd/animation/controller/ValueController;->fillAnimation:Lcom/rd/animation/type/FillAnimation;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->fillAnimation:Lcom/rd/animation/type/FillAnimation;

    return-object v0
.end method

.method public scale()Lcom/rd/animation/type/ScaleAnimation;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->scaleAnimation:Lcom/rd/animation/type/ScaleAnimation;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/rd/animation/type/ScaleAnimation;

    iget-object v1, p0, Lcom/rd/animation/controller/ValueController;->updateListener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/rd/animation/type/ScaleAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/rd/animation/controller/ValueController;->scaleAnimation:Lcom/rd/animation/type/ScaleAnimation;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->scaleAnimation:Lcom/rd/animation/type/ScaleAnimation;

    return-object v0
.end method

.method public slide()Lcom/rd/animation/type/SlideAnimation;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->slideAnimation:Lcom/rd/animation/type/SlideAnimation;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/rd/animation/type/SlideAnimation;

    iget-object v1, p0, Lcom/rd/animation/controller/ValueController;->updateListener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/rd/animation/type/SlideAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/rd/animation/controller/ValueController;->slideAnimation:Lcom/rd/animation/type/SlideAnimation;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->slideAnimation:Lcom/rd/animation/type/SlideAnimation;

    return-object v0
.end method

.method public swap()Lcom/rd/animation/type/SwapAnimation;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->swapAnimation:Lcom/rd/animation/type/SwapAnimation;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/rd/animation/type/SwapAnimation;

    iget-object v1, p0, Lcom/rd/animation/controller/ValueController;->updateListener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/rd/animation/type/SwapAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/rd/animation/controller/ValueController;->swapAnimation:Lcom/rd/animation/type/SwapAnimation;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->swapAnimation:Lcom/rd/animation/type/SwapAnimation;

    return-object v0
.end method

.method public thinWorm()Lcom/rd/animation/type/ThinWormAnimation;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->thinWormAnimation:Lcom/rd/animation/type/ThinWormAnimation;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/rd/animation/type/ThinWormAnimation;

    iget-object v1, p0, Lcom/rd/animation/controller/ValueController;->updateListener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/rd/animation/type/ThinWormAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/rd/animation/controller/ValueController;->thinWormAnimation:Lcom/rd/animation/type/ThinWormAnimation;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->thinWormAnimation:Lcom/rd/animation/type/ThinWormAnimation;

    return-object v0
.end method

.method public worm()Lcom/rd/animation/type/WormAnimation;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->wormAnimation:Lcom/rd/animation/type/WormAnimation;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/rd/animation/type/WormAnimation;

    iget-object v1, p0, Lcom/rd/animation/controller/ValueController;->updateListener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    invoke-direct {v0, v1}, Lcom/rd/animation/type/WormAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/rd/animation/controller/ValueController;->wormAnimation:Lcom/rd/animation/type/WormAnimation;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/rd/animation/controller/ValueController;->wormAnimation:Lcom/rd/animation/type/WormAnimation;

    return-object v0
.end method
