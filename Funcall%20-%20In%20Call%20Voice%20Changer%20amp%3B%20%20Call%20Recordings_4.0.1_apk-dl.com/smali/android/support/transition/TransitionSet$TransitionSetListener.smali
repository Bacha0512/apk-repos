.class Landroid/support/transition/TransitionSet$TransitionSetListener;
.super Landroid/support/transition/Transition$TransitionListenerAdapter;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/TransitionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionSetListener"
.end annotation


# instance fields
.field mTransitionSet:Landroid/support/transition/TransitionSet;


# direct methods
.method constructor <init>(Landroid/support/transition/TransitionSet;)V
    .locals 0
    .param p1, "transitionSet"    # Landroid/support/transition/TransitionSet;

    .prologue
    .line 342
    invoke-direct {p0}, Landroid/support/transition/Transition$TransitionListenerAdapter;-><init>()V

    .line 343
    iput-object p1, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    .line 344
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/support/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 356
    iget-object v0, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    # --operator for: Landroid/support/transition/TransitionSet;->mCurrentListeners:I
    invoke-static {v0}, Landroid/support/transition/TransitionSet;->access$106(Landroid/support/transition/TransitionSet;)I

    .line 357
    iget-object v0, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    # getter for: Landroid/support/transition/TransitionSet;->mCurrentListeners:I
    invoke-static {v0}, Landroid/support/transition/TransitionSet;->access$100(Landroid/support/transition/TransitionSet;)I

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    const/4 v1, 0x0

    # setter for: Landroid/support/transition/TransitionSet;->mStarted:Z
    invoke-static {v0, v1}, Landroid/support/transition/TransitionSet;->access$002(Landroid/support/transition/TransitionSet;Z)Z

    .line 360
    iget-object v0, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    invoke-virtual {v0}, Landroid/support/transition/TransitionSet;->end()V

    .line 362
    :cond_0
    invoke-virtual {p1, p0}, Landroid/support/transition/Transition;->removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 363
    return-void
.end method

.method public onTransitionStart(Landroid/support/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 348
    iget-object v0, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    # getter for: Landroid/support/transition/TransitionSet;->mStarted:Z
    invoke-static {v0}, Landroid/support/transition/TransitionSet;->access$000(Landroid/support/transition/TransitionSet;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    invoke-virtual {v0}, Landroid/support/transition/TransitionSet;->start()V

    .line 350
    iget-object v0, p0, Landroid/support/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSet;

    const/4 v1, 0x1

    # setter for: Landroid/support/transition/TransitionSet;->mStarted:Z
    invoke-static {v0, v1}, Landroid/support/transition/TransitionSet;->access$002(Landroid/support/transition/TransitionSet;Z)Z

    .line 352
    :cond_0
    return-void
.end method
