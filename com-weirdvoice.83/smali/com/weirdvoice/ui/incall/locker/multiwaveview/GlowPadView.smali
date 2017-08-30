.class public Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;
.super Landroid/view/View;
.source "GlowPadView.java"

# interfaces
.implements Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;,
        Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final HIDE_ANIMATION_DELAY:I = 0xc8

.field private static final HIDE_ANIMATION_DURATION:I = 0xc8

.field private static final INITIAL_SHOW_HANDLE_DURATION:I = 0xc8

.field private static final RETURN_TO_HOME_DELAY:I = 0x4b0

.field private static final RETURN_TO_HOME_DURATION:I = 0xc8

.field private static final REVEAL_GLOW_DELAY:I = 0x0

.field private static final REVEAL_GLOW_DURATION:I = 0x0

.field private static final RING_SCALE_COLLAPSED:F = 0.5f

.field private static final RING_SCALE_EXPANDED:F = 1.0f

.field private static final SHOW_ANIMATION_DELAY:I = 0x32

.field private static final SHOW_ANIMATION_DURATION:I = 0xc8

.field private static final SNAP_MARGIN_DEFAULT:F = 20.0f

.field private static final STATE_FINISH:I = 0x5

.field private static final STATE_FIRST_TOUCH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SNAP:I = 0x4

.field private static final STATE_START:I = 0x1

.field private static final STATE_TRACKING:I = 0x3

.field private static final TAP_RADIUS_SCALE_ACCESSIBILITY_ENABLED:F = 1.3f

.field private static final TARGET_SCALE_COLLAPSED:F = 0.8f

.field private static final TARGET_SCALE_EXPANDED:F = 1.0f

.field private static final THIS_FILE:Ljava/lang/String; = "GlowPadView"

.field private static final WAVE_ANIMATION_DURATION:I = 0x546


# instance fields
.field private mActiveTarget:I

.field private mAllowScaling:Z

.field private mAlwaysTrackFinger:Z

.field private mAnimatingTargets:Z

.field private mBackgroundAnimator:Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;

.field private mDirectionDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptionsResourceId:I

.field private mDragging:Z

.field private mFeedbackCount:I

.field private mFirstItemOffset:F

.field private mGlowAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

.field private mGlowRadius:F

.field private mGrabbedState:I

.field private mGravity:I

.field private mHandleDrawable:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

.field private mHorizontalInset:I

.field private mInitialLayout:Z

.field private mInnerRadius:F

.field private mMagneticTargets:Z

.field private mMaxTargetHeight:I

.field private mMaxTargetWidth:I

.field private mNewTargetResources:I

.field private mOnLeftRightListener:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;

.field private mOnTriggerListener:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$OnTriggerListener;

.field private mOuterRadius:F

.field private mOuterRing:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

.field private mPointCloud:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;

.field private mPointerId:I

.field private mResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

.field private mRingScaleFactor:F

.field private mSnapMargin:F

.field private mTargetAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

.field private mTargetDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptionsResourceId:I

.field private mTargetDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetResourceId:I

.field private mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mVerticalInset:I

.field private mVibrationDuration:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

.field private mWaveCenterX:F

.field private mWaveCenterY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 229
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 113
    new-instance v6, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v6, p0, v8}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;)V

    iput-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    .line 114
    new-instance v6, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v6, p0, v8}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;)V

    iput-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    .line 115
    new-instance v6, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v6, p0, v8}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;)V

    iput-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    .line 123
    const/4 v6, 0x3

    iput v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mFeedbackCount:I

    .line 124
    iput v5, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mVibrationDuration:I

    .line 126
    const/4 v6, -0x1

    iput v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 132
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mRingScaleFactor:F

    .line 135
    iput v7, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 136
    iput v7, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 137
    iput v7, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mFirstItemOffset:F

    .line 138
    iput-boolean v5, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mMagneticTargets:Z

    .line 178
    new-instance v6, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$1;

    invoke-direct {v6, p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$1;-><init>(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;)V

    iput-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 185
    new-instance v6, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$2;

    invoke-direct {v6, p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$2;-><init>(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;)V

    iput-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    .line 193
    new-instance v6, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$3;

    invoke-direct {v6, p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$3;-><init>(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;)V

    iput-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 200
    new-instance v6, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$4;

    invoke-direct {v6, p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$4;-><init>(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;)V

    iput-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    .line 216
    const/16 v6, 0x30

    iput v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mGravity:I

    .line 217
    iput-boolean v4, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mInitialLayout:Z

    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 232
    .local v2, "res":Landroid/content/res/Resources;
    sget-object v6, Lcom/weirdvoice/R$styleable;->GlowPadView:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 233
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x2

    iget v7, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mInnerRadius:F

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mInnerRadius:F

    .line 234
    const/16 v6, 0xb

    iget v7, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRadius:F

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 235
    const/16 v6, 0xd

    iget v7, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mSnapMargin:F

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 237
    const/4 v6, 0x4

    .line 238
    iget v7, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mFirstItemOffset:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v7, v8

    .line 237
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    float-to-double v6, v6

    .line 236
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v6, v6

    iput v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mFirstItemOffset:F

    .line 239
    const/16 v6, 0xc

    .line 240
    iget v7, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mVibrationDuration:I

    .line 239
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mVibrationDuration:I

    .line 241
    const/16 v6, 0xe

    .line 242
    iget v7, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mFeedbackCount:I

    .line 241
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mFeedbackCount:I

    .line 243
    const/4 v6, 0x6

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mAllowScaling:Z

    .line 246
    new-instance v6, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    const v7, 0x7f0202b6

    invoke-direct {v6, v2, v7}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    .line 247
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    sget-object v7, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v6, v7}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setState([I)V

    .line 248
    new-instance v6, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    const v7, 0x7f0202cf

    invoke-direct {v6, v2, v7}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRing:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    .line 250
    const/16 v6, 0xf

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    .line 251
    const/4 v6, 0x5

    iget-boolean v7, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mMagneticTargets:Z

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mMagneticTargets:Z

    .line 253
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 256
    .local v1, "outValue":Landroid/util/TypedValue;
    const/4 v6, 0x7

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 257
    iget v6, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v6}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->internalSetTargetResources(I)V

    .line 261
    :cond_0
    const/16 v6, 0x8

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 262
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    .line 263
    .local v3, "resourceId":I
    if-eqz v3, :cond_1

    .line 264
    invoke-virtual {p0, v3}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 269
    .end local v3    # "resourceId":I
    :cond_1
    const/16 v6, 0x9

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 270
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    .line 271
    .restart local v3    # "resourceId":I
    if-eqz v3, :cond_2

    .line 272
    invoke-virtual {p0, v3}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    .line 276
    .end local v3    # "resourceId":I
    :cond_2
    const/16 v6, 0x10

    const/16 v7, 0x11

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mGravity:I

    .line 278
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 280
    iget v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mVibrationDuration:I

    if-lez v6, :cond_3

    :goto_0
    invoke-virtual {p0, v4}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->setVibrateEnabled(Z)V

    .line 282
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->assignDefaultsIfNeeded()V

    .line 284
    return-void

    :cond_3
    move v4, v5

    .line 280
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;)F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveCenterX:F

    return v0
.end method

.method static synthetic access$1(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;)F
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveCenterY:F

    return v0
.end method

.method static synthetic access$2(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;IFF)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0, p1, p2, p3}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->switchToState(IFF)V

    return-void
.end method

.method static synthetic access$3(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;)V
    .locals 0

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->dispatchOnFinishFinalAnimation()V

    return-void
.end method

.method static synthetic access$4(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;)I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mNewTargetResources:I

    return v0
.end method

.method static synthetic access$5(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;I)V
    .locals 0

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->internalSetTargetResources(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;I)V
    .locals 0

    .prologue
    .line 140
    iput p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mNewTargetResources:I

    return-void
.end method

.method static synthetic access$7(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;ZZ)V
    .locals 0

    .prologue
    .line 494
    invoke-direct {p0, p1, p2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    return-void
.end method

.method static synthetic access$8(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;Z)V
    .locals 0

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    return-void
.end method

.method static synthetic access$9(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;)Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mPointCloud:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;

    return-object v0
.end method

.method private announceForAccessibilityTarget(I)V
    .locals 1
    .param p1, "activeTarget"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 937
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, "targetContentDescription":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 939
    return-void
.end method

.method private announceTargets()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1237
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_0

    .line 1238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1239
    .local v5, "utterance":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1240
    .local v2, "targetCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 1249
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 1250
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1253
    .end local v1    # "i":I
    .end local v2    # "targetCount":I
    .end local v5    # "utterance":Ljava/lang/StringBuilder;
    :cond_0
    return-void

    .line 1241
    .restart local v1    # "i":I
    .restart local v2    # "targetCount":I
    .restart local v5    # "utterance":Ljava/lang/StringBuilder;
    :cond_1
    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 1242
    .local v3, "targetDescription":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getDirectionDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 1243
    .local v0, "directionDescription":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1244
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1245
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1246
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    .end local v4    # "text":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private assignDefaultsIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 997
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRing:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRing:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 1000
    :cond_0
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mSnapMargin:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 1001
    const/4 v0, 0x1

    .line 1002
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1001
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 1004
    :cond_1
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mInnerRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 1005
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mInnerRadius:F

    .line 1007
    :cond_2
    return-void
.end method

.method private computeInsets(II)V
    .locals 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v2, 0x0

    .line 1010
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getAbsoluteGravity()I

    move-result v0

    .line 1012
    .local v0, "absoluteGravity":I
    and-int/lit8 v1, v0, 0x7

    packed-switch v1, :pswitch_data_0

    .line 1021
    :pswitch_0
    div-int/lit8 v1, p1, 0x2

    iput v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mHorizontalInset:I

    .line 1024
    :goto_0
    and-int/lit8 v1, v0, 0x70

    sparse-switch v1, :sswitch_data_0

    .line 1033
    div-int/lit8 v1, p2, 0x2

    iput v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mVerticalInset:I

    .line 1036
    :goto_1
    return-void

    .line 1014
    :pswitch_1
    iput v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 1017
    :pswitch_2
    iput p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 1026
    :sswitch_0
    iput v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 1029
    :sswitch_1
    iput p2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 1012
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1024
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private computeScaleFactor(IIII)F
    .locals 6
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I
    .param p3, "actualWidth"    # I
    .param p4, "actualHeight"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1046
    iget-boolean v4, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mAllowScaling:Z

    if-nez v4, :cond_0

    .line 1081
    :goto_0
    return v3

    .line 1048
    :cond_0
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getAbsoluteGravity()I

    move-result v0

    .line 1050
    .local v0, "absoluteGravity":I
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1051
    .local v1, "scaleX":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1057
    .local v2, "scaleY":F
    and-int/lit8 v4, v0, 0x7

    packed-switch v4, :pswitch_data_0

    .line 1063
    :pswitch_0
    if-le p1, p3, :cond_1

    .line 1064
    int-to-float v4, p3

    mul-float/2addr v4, v3

    iget v5, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 1065
    iget v5, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    sub-int v5, p1, v5

    int-to-float v5, v5

    .line 1064
    div-float v1, v4, v5

    .line 1069
    :cond_1
    :pswitch_1
    and-int/lit8 v4, v0, 0x70

    sparse-switch v4, :sswitch_data_0

    .line 1075
    if-le p2, p4, :cond_2

    .line 1076
    int-to-float v4, p4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 1077
    iget v4, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    .line 1076
    div-float v2, v3, v4

    .line 1081
    :cond_2
    :sswitch_0
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_0

    .line 1057
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1069
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private deactivateTargets()V
    .locals 4

    .prologue
    .line 423
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 424
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 428
    const/4 v3, -0x1

    iput v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 429
    return-void

    .line 425
    :cond_0
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    .line 426
    .local v2, "target":Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;
    sget-object v3, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setState([I)V

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private dispatchOnFinishFinalAnimation()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$OnTriggerListener;->onFinishFinalAnimation()V

    .line 454
    :cond_0
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 3
    .param p1, "whichTarget"    # I

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->vibrate()V

    .line 437
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOnLeftRightListener:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;

    if-eqz v0, :cond_1

    .line 441
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Target activated :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    if-nez p1, :cond_2

    .line 443
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOnLeftRightListener:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;->onLeftRightChoice(I)V

    .line 448
    :cond_1
    :goto_0
    return-void

    .line 444
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOnLeftRightListener:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;->onLeftRightChoice(I)V

    goto :goto_0
.end method

.method private dist2(FF)F
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 1222
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private doFinish()V
    .locals 7

    .prologue
    const/16 v6, 0xc8

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 457
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 458
    .local v0, "activeTarget":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    move v1, v2

    .line 460
    .local v1, "targetHit":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 462
    invoke-direct {p0, v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->highlightSelected(I)V

    .line 465
    const/16 v2, 0x4b0

    iget-object v4, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v6, v2, v5, v4}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 466
    invoke-direct {p0, v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->dispatchTriggerEvent(I)V

    .line 467
    iget-boolean v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-nez v2, :cond_0

    .line 469
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 477
    :cond_0
    :goto_1
    invoke-direct {p0, v3}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->setGrabbedState(I)V

    .line 478
    return-void

    .end local v1    # "targetHit":Z
    :cond_1
    move v1, v3

    .line 458
    goto :goto_0

    .line 473
    .restart local v1    # "targetHit":Z
    :cond_2
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v6, v3, v5, v4}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 474
    invoke-direct {p0, v2, v3}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    goto :goto_1
.end method

.method private getAbsoluteGravity()I
    .locals 1

    .prologue
    .line 1088
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mGravity:I

    return v0
.end method

.method private getAngle(FI)F
    .locals 2
    .param p1, "alpha"    # F
    .param p2, "i"    # I

    .prologue
    .line 1188
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mFirstItemOffset:F

    int-to-float v1, p2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private getDirectionDescription(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1269
    :cond_0
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mDirectionDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    .line 1270
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1271
    const-string v0, "GlowPadView"

    const-string v1, "The number of target drawables must be equal to the number of direction descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    const/4 v0, 0x0

    .line 1276
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private getRingHeight()F
    .locals 4

    .prologue
    .line 1113
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRing:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private getRingWidth()F
    .locals 4

    .prologue
    .line 1109
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRing:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private getScaledGlowRadiusSquared()F
    .locals 3

    .prologue
    .line 1227
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1228
    const v1, 0x3fa66666    # 1.3f

    iget v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mGlowRadius:F

    mul-float v0, v1, v2

    .line 1232
    .local v0, "scaledTapRadius":F
    :goto_0
    invoke-direct {p0, v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->square(F)F

    move-result v1

    return v1

    .line 1230
    .end local v0    # "scaledTapRadius":F
    :cond_0
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mGlowRadius:F

    .restart local v0    # "scaledTapRadius":F
    goto :goto_0
.end method

.method private getSliceAngle()F
    .locals 4

    .prologue
    .line 1192
    const-wide v0, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    iget-object v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private getTargetDescription(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1257
    :cond_0
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 1258
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1259
    const-string v0, "GlowPadView"

    const-string v1, "The number of target drawables must be equal to the number of target descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    const/4 v0, 0x0

    .line 1264
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private handleCancel(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, -0x1

    .line 826
    iput v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 828
    iget v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 829
    .local v0, "actionIndex":I
    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    .line 830
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 831
    return-void
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 804
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 805
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 806
    .local v1, "eventX":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 807
    .local v2, "eventY":F
    const/4 v3, 0x1

    invoke-direct {p0, v3, v1, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 808
    invoke-direct {p0, v1, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->trySwitchToFirstTouchState(FF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 809
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mDragging:Z

    .line 814
    :goto_0
    return-void

    .line 811
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mPointerId:I

    .line 812
    invoke-direct {p0, v1, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    goto :goto_0
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .locals 38
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 834
    const/4 v6, -0x1

    .line 835
    .local v6, "activeTarget":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v12

    .line 836
    .local v12, "historySize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    .line 837
    .local v26, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;>;"
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 838
    .local v17, "ntargets":I
    const/16 v30, 0x0

    .line 839
    .local v30, "x":F
    const/16 v31, 0x0

    .line 840
    .local v31, "y":F
    const/4 v5, 0x0

    .line 841
    .local v5, "activeAngle":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mPointerId:I

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 843
    .local v4, "actionIndex":I
    const/16 v32, -0x1

    move/from16 v0, v32

    if-ne v4, v0, :cond_1

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 847
    :cond_1
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_1
    add-int/lit8 v32, v12, 0x1

    move/from16 v0, v32

    if-lt v14, v0, :cond_7

    .line 893
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mDragging:Z

    move/from16 v32, v0

    if-eqz v32, :cond_0

    .line 897
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v6, v0, :cond_13

    .line 898
    const/16 v32, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 899
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 905
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mActiveTarget:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-eq v0, v6, :cond_6

    .line 907
    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mActiveTarget:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_3

    .line 908
    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mActiveTarget:I

    move/from16 v32, v0

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    .line 909
    .local v21, "target":Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;
    sget-object v32, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->hasState([I)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 910
    sget-object v32, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setState([I)V

    .line 912
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mMagneticTargets:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3

    .line 913
    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mActiveTarget:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveCenterX:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveCenterY:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->updateTargetPosition(IFF)V

    .line 917
    .end local v21    # "target":Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;
    :cond_3
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v6, v0, :cond_6

    .line 918
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    .line 919
    .restart local v21    # "target":Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;
    sget-object v32, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->hasState([I)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 920
    sget-object v32, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setState([I)V

    .line 922
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mMagneticTargets:Z

    move/from16 v32, v0

    if-eqz v32, :cond_5

    .line 923
    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveCenterX:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveCenterY:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v6, v1, v2, v5}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->updateTargetPosition(IFFF)V

    .line 925
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v32

    const-string v33, "accessibility"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual/range {v32 .. v32}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v32

    if-eqz v32, :cond_6

    .line 926
    sget v32, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v33, 0x10

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_6

    .line 927
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->announceForAccessibilityTarget(I)V

    .line 932
    .end local v21    # "target":Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;
    :cond_6
    move-object/from16 v0, p0

    iput v6, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mActiveTarget:I

    goto/16 :goto_0

    .line 848
    :cond_7
    if-ge v14, v12, :cond_a

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v14}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v10

    .line 850
    .local v10, "eventX":F
    :goto_3
    if-ge v14, v12, :cond_b

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v14}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v11

    .line 853
    .local v11, "eventY":F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveCenterX:F

    move/from16 v32, v0

    sub-float v28, v10, v32

    .line 854
    .local v28, "tx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveCenterY:F

    move/from16 v32, v0

    sub-float v29, v11, v32

    .line 855
    .local v29, "ty":F
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v27, v0

    .line 856
    .local v27, "touchRadius":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRadius:F

    move/from16 v32, v0

    cmpl-float v32, v27, v32

    if-lez v32, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRadius:F

    move/from16 v32, v0

    div-float v18, v32, v27

    .line 857
    .local v18, "scale":F
    :goto_5
    mul-float v15, v28, v18

    .line 858
    .local v15, "limitX":F
    mul-float v16, v29, v18

    .line 859
    .local v16, "limitY":F
    move/from16 v0, v29

    neg-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    .line 861
    .local v8, "angleRad":D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mDragging:Z

    move/from16 v32, v0

    if-nez v32, :cond_8

    .line 862
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->trySwitchToFirstTouchState(FF)Z

    .line 865
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mDragging:Z

    move/from16 v32, v0

    if-eqz v32, :cond_9

    .line 867
    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mRingScaleFactor:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRadius:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mSnapMargin:F

    move/from16 v33, v0

    sub-float v20, v32, v33

    .line 868
    .local v20, "snapRadius":F
    mul-float v19, v20, v20

    .line 870
    .local v19, "snapDistance2":F
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    move/from16 v0, v17

    if-lt v13, v0, :cond_d

    .line 889
    .end local v13    # "i":I
    .end local v19    # "snapDistance2":F
    .end local v20    # "snapRadius":F
    :cond_9
    move/from16 v30, v15

    .line 890
    move/from16 v31, v16

    .line 847
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 849
    .end local v8    # "angleRad":D
    .end local v10    # "eventX":F
    .end local v11    # "eventY":F
    .end local v15    # "limitX":F
    .end local v16    # "limitY":F
    .end local v18    # "scale":F
    .end local v27    # "touchRadius":F
    .end local v28    # "tx":F
    .end local v29    # "ty":F
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    goto/16 :goto_3

    .line 851
    .restart local v10    # "eventX":F
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    goto/16 :goto_4

    .line 856
    .restart local v11    # "eventY":F
    .restart local v27    # "touchRadius":F
    .restart local v28    # "tx":F
    .restart local v29    # "ty":F
    :cond_c
    const/high16 v18, 0x3f800000    # 1.0f

    goto :goto_5

    .line 871
    .restart local v8    # "angleRad":D
    .restart local v13    # "i":I
    .restart local v15    # "limitX":F
    .restart local v16    # "limitY":F
    .restart local v18    # "scale":F
    .restart local v19    # "snapDistance2":F
    .restart local v20    # "snapRadius":F
    :cond_d
    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    .line 873
    .restart local v21    # "target":Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mFirstItemOffset:F

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    int-to-double v0, v13

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x3fe0000000000000L    # 0.5

    sub-double v34, v34, v36

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    mul-double v34, v34, v36

    const-wide v36, 0x400921fb54442d18L    # Math.PI

    mul-double v34, v34, v36

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v36, v0

    div-double v34, v34, v36

    add-double v24, v32, v34

    .line 874
    .local v24, "targetMinRad":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mFirstItemOffset:F

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    int-to-double v0, v13

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x3fe0000000000000L    # 0.5

    add-double v34, v34, v36

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    mul-double v34, v34, v36

    const-wide v36, 0x400921fb54442d18L    # Math.PI

    mul-double v34, v34, v36

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v36, v0

    div-double v34, v34, v36

    add-double v22, v32, v34

    .line 875
    .local v22, "targetMaxRad":D
    invoke-virtual/range {v21 .. v21}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->isEnabled()Z

    move-result v32

    if-eqz v32, :cond_11

    .line 877
    cmpl-double v32, v8, v24

    if-lez v32, :cond_e

    cmpg-double v32, v8, v22

    if-lez v32, :cond_12

    .line 878
    :cond_e
    const-wide v32, 0x401921fb54442d18L    # 6.283185307179586

    add-double v32, v32, v8

    cmpl-double v32, v32, v24

    if-lez v32, :cond_f

    .line 879
    const-wide v32, 0x401921fb54442d18L    # 6.283185307179586

    add-double v32, v32, v8

    cmpg-double v32, v32, v22

    if-lez v32, :cond_12

    .line 880
    :cond_f
    const-wide v32, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v32, v8, v32

    cmpl-double v32, v32, v24

    if-lez v32, :cond_10

    .line 881
    const-wide v32, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v32, v8, v32

    .line 876
    cmpg-double v32, v32, v22

    if-lez v32, :cond_12

    :cond_10
    const/4 v7, 0x0

    .line 882
    .local v7, "angleMatches":Z
    :goto_7
    if-eqz v7, :cond_11

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v32

    cmpl-float v32, v32, v19

    if-lez v32, :cond_11

    .line 883
    move v6, v13

    .line 884
    neg-double v0, v8

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    double-to-float v5, v0

    .line 870
    .end local v7    # "angleMatches":Z
    :cond_11
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    .line 876
    :cond_12
    const/4 v7, 0x1

    goto :goto_7

    .line 901
    .end local v8    # "angleRad":D
    .end local v10    # "eventX":F
    .end local v11    # "eventY":F
    .end local v13    # "i":I
    .end local v15    # "limitX":F
    .end local v16    # "limitY":F
    .end local v18    # "scale":F
    .end local v19    # "snapDistance2":F
    .end local v20    # "snapRadius":F
    .end local v21    # "target":Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;
    .end local v22    # "targetMaxRad":D
    .end local v24    # "targetMinRad":D
    .end local v27    # "touchRadius":F
    .end local v28    # "tx":F
    .end local v29    # "ty":F
    :cond_13
    const/16 v32, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 902
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    goto/16 :goto_2
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 817
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 818
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mPointerId:I

    if-ne v1, v2, :cond_0

    .line 819
    const/4 v1, 0x5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 821
    :cond_0
    return-void
.end method

.method private hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
    .locals 8
    .param p1, "duration"    # I
    .param p2, "delay"    # I
    .param p3, "finalAlpha"    # F
    .param p4, "finishListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/4 v7, 0x0

    .line 410
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 411
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mPointCloud:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;->glowManager:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;

    int-to-long v2, p1

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 412
    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 413
    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 414
    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 415
    const-string v6, "x"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    .line 416
    const-string v6, "y"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    .line 417
    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    .line 418
    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    aput-object p4, v4, v5

    .line 411
    invoke-static {v1, v2, v3, v4}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 420
    return-void
.end method

.method private hideTargets(ZZ)V
    .locals 17
    .param p1, "animate"    # Z
    .param p2, "expanded"    # Z

    .prologue
    .line 495
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v10}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 498
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    .line 499
    if-eqz p1, :cond_0

    const/16 v3, 0xc8

    .line 500
    .local v3, "duration":I
    :goto_0
    if-eqz p1, :cond_1

    const/16 v2, 0xc8

    .line 502
    .local v2, "delay":I
    :goto_1
    if-eqz p2, :cond_2

    .line 503
    const/high16 v9, 0x3f800000    # 1.0f

    .line 504
    .local v9, "targetScale":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 505
    .local v6, "length":I
    sget-object v5, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    .line 506
    .local v5, "interpolator":Landroid/animation/TimeInterpolator;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-lt v4, v6, :cond_3

    .line 518
    if-eqz p2, :cond_4

    .line 519
    const/high16 v7, 0x3f800000    # 1.0f

    .line 520
    .local v7, "ringScaleTarget":F
    :goto_4
    move-object/from16 v0, p0

    iget v10, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mRingScaleFactor:F

    mul-float/2addr v7, v10

    .line 521
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRing:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    int-to-long v12, v3

    const/16 v14, 0xe

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 522
    const-string v16, "ease"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v5, v14, v15

    const/4 v15, 0x2

    .line 523
    const-string v16, "alpha"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 524
    const-string v16, "scaleX"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 525
    const-string v16, "scaleY"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 526
    const-string v16, "delay"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 527
    const-string v16, "onUpdate"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/16 v15, 0xc

    .line 528
    const-string v16, "onComplete"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    .line 521
    invoke-static {v11, v12, v13, v14}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 530
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v10}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 531
    return-void

    .line 499
    .end local v2    # "delay":I
    .end local v3    # "duration":I
    .end local v4    # "i":I
    .end local v5    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v6    # "length":I
    .end local v7    # "ringScaleTarget":F
    .end local v9    # "targetScale":F
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 500
    .restart local v3    # "duration":I
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 503
    .restart local v2    # "delay":I
    :cond_2
    const v9, 0x3f4ccccd    # 0.8f

    goto/16 :goto_2

    .line 507
    .restart local v4    # "i":I
    .restart local v5    # "interpolator":Landroid/animation/TimeInterpolator;
    .restart local v6    # "length":I
    .restart local v9    # "targetScale":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    .line 508
    .local v8, "target":Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;
    sget-object v10, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v8, v10}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setState([I)V

    .line 509
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    int-to-long v12, v3

    const/16 v11, 0xc

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 510
    const-string v15, "ease"

    aput-object v15, v11, v14

    const/4 v14, 0x1

    aput-object v5, v11, v14

    const/4 v14, 0x2

    .line 511
    const-string v15, "alpha"

    aput-object v15, v11, v14

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v11, v14

    const/4 v14, 0x4

    .line 512
    const-string v15, "scaleX"

    aput-object v15, v11, v14

    const/4 v14, 0x5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v11, v14

    const/4 v14, 0x6

    .line 513
    const-string v15, "scaleY"

    aput-object v15, v11, v14

    const/4 v14, 0x7

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v11, v14

    const/16 v14, 0x8

    .line 514
    const-string v15, "delay"

    aput-object v15, v11, v14

    const/16 v14, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v11, v14

    const/16 v14, 0xa

    .line 515
    const-string v15, "onUpdate"

    aput-object v15, v11, v14

    const/16 v14, 0xb

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v15, v11, v14

    .line 509
    invoke-static {v8, v12, v13, v11}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 506
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 519
    .end local v8    # "target":Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;
    :cond_4
    const/high16 v7, 0x3f000000    # 0.5f

    goto/16 :goto_4
.end method

.method private hideUnselected(I)V
    .locals 3
    .param p1, "active"    # I

    .prologue
    .line 487
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 492
    return-void

    .line 488
    :cond_0
    if-eq v0, p1, :cond_1

    .line 489
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 487
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private highlightSelected(I)V
    .locals 2
    .param p1, "activeTarget"    # I

    .prologue
    .line 482
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setState([I)V

    .line 483
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->hideUnselected(I)V

    .line 484
    return-void
.end method

.method private internalSetTargetResources(I)V
    .locals 8
    .param p1, "resourceId"    # I

    .prologue
    .line 587
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->loadDrawableArray(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 588
    .local v5, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;>;"
    iput-object v5, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 589
    iput p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetResourceId:I

    .line 591
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->getWidth()I

    move-result v3

    .line 592
    .local v3, "maxWidth":I
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->getHeight()I

    move-result v2

    .line 593
    .local v2, "maxHeight":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 594
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 599
    iget v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    if-ne v6, v3, :cond_0

    iget v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    if-eq v6, v2, :cond_2

    .line 600
    :cond_0
    iput v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    .line 601
    iput v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    .line 602
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->requestLayout()V

    .line 607
    :goto_1
    return-void

    .line 595
    :cond_1
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    .line 596
    .local v4, "target":Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;
    invoke-virtual {v4}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->getWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 597
    invoke-virtual {v4}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->getHeight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 594
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 604
    .end local v4    # "target":Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;
    :cond_2
    iget v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->updateTargetPositions(FF)V

    .line 605
    iget v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->updatePointCloudPosition(FF)V

    goto :goto_1
.end method

.method private loadDescriptions(I)Ljava/util/ArrayList;
    .locals 6
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1280
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1281
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1282
    .local v2, "count":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1283
    .local v4, "targetContentDescriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v2, :cond_0

    .line 1287
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1288
    return-object v4

    .line 1284
    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1285
    .local v1, "contentDescription":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1283
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private loadDrawableArray(I)Ljava/util/ArrayList;
    .locals 8
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 574
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 575
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 576
    .local v1, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 577
    .local v2, "drawables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 582
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 583
    return-object v2

    .line 578
    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 579
    .local v6, "value":Landroid/util/TypedValue;
    new-instance v5, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    if-eqz v6, :cond_1

    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    :goto_1
    invoke-direct {v5, v4, v7}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 580
    .local v5, "target":Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 579
    .end local v5    # "target":Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private replaceTargetDrawables(Landroid/content/res/Resources;II)Z
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "existingResourceId"    # I
    .param p3, "newResourceId"    # I

    .prologue
    .line 1323
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 1324
    :cond_0
    const/4 v2, 0x0

    .line 1342
    :cond_1
    :goto_0
    return v2

    .line 1327
    :cond_2
    const/4 v2, 0x0

    .line 1328
    .local v2, "result":Z
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1329
    .local v0, "drawables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1330
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v3, :cond_3

    .line 1338
    if-eqz v2, :cond_1

    .line 1339
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->requestLayout()V

    goto :goto_0

    .line 1331
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    .line 1332
    .local v4, "target":Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v5

    if-ne v5, p2, :cond_4

    .line 1333
    invoke-virtual {v4, p1, p3}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 1334
    const/4 v2, 0x1

    .line 1330
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private resolveMeasured(II)I
    .locals 3
    .param p1, "measureSpec"    # I
    .param p2, "desired"    # I

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 340
    .local v1, "specSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 349
    move v0, v1

    .line 351
    :goto_0
    return v0

    .line 342
    :sswitch_0
    move v0, p2

    .line 343
    goto :goto_0

    .line 345
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 346
    goto :goto_0

    .line 340
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private setGrabbedState(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    const/4 v1, 0x1

    .line 968
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mGrabbedState:I

    if-eq p1, v0, :cond_1

    .line 969
    if-eqz p1, :cond_0

    .line 970
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->vibrate()V

    .line 972
    :cond_0
    iput p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mGrabbedState:I

    .line 973
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_1

    .line 974
    if-nez p1, :cond_2

    .line 975
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$OnTriggerListener;->onReleased(Landroid/view/View;I)V

    .line 979
    :goto_0
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 982
    :cond_1
    return-void

    .line 977
    :cond_2
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .param p1, "duration"    # I
    .param p2, "delay"    # I
    .param p3, "finalAlpha"    # F
    .param p4, "finishListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 399
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mPointCloud:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;->glowManager:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;

    int-to-long v2, p1

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 400
    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 401
    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 402
    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 403
    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    .line 404
    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    aput-object p4, v4, v5

    .line 399
    invoke-static {v1, v2, v3, v4}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 406
    return-void
.end method

.method private showTargets(Z)V
    .locals 13
    .param p1, "animate"    # Z

    .prologue
    .line 534
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v6}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 535
    iput-boolean p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    .line 536
    if-eqz p1, :cond_0

    const/16 v0, 0x32

    .line 537
    .local v0, "delay":I
    :goto_0
    if-eqz p1, :cond_1

    const/16 v1, 0xc8

    .line 538
    .local v1, "duration":I
    :goto_1
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 539
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-lt v2, v3, :cond_2

    .line 551
    iget v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mRingScaleFactor:F

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float v4, v6, v7

    .line 552
    .local v4, "ringScale":F
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v7, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRing:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    int-to-long v8, v1

    const/16 v10, 0xe

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 553
    const-string v12, "ease"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    .line 554
    const-string v12, "alpha"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    .line 555
    const-string v12, "scaleX"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    .line 556
    const-string v12, "scaleY"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x8

    .line 557
    const-string v12, "delay"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0xa

    .line 558
    const-string v12, "onUpdate"

    aput-object v12, v10, v11

    const/16 v11, 0xb

    iget-object v12, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v12, v10, v11

    const/16 v11, 0xc

    .line 559
    const-string v12, "onComplete"

    aput-object v12, v10, v11

    const/16 v11, 0xd

    iget-object v12, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v12, v10, v11

    .line 552
    invoke-static {v7, v8, v9, v10}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v6}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 562
    return-void

    .line 536
    .end local v0    # "delay":I
    .end local v1    # "duration":I
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "ringScale":F
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 537
    .restart local v0    # "delay":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 540
    .restart local v1    # "duration":I
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    :cond_2
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    .line 541
    .local v5, "target":Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;
    sget-object v6, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v5, v6}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setState([I)V

    .line 542
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    int-to-long v8, v1

    const/16 v7, 0xc

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 543
    const-string v11, "ease"

    aput-object v11, v7, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v11, v7, v10

    const/4 v10, 0x2

    .line 544
    const-string v11, "alpha"

    aput-object v11, v7, v10

    const/4 v10, 0x3

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x4

    .line 545
    const-string v11, "scaleX"

    aput-object v11, v7, v10

    const/4 v10, 0x5

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x6

    .line 546
    const-string v11, "scaleY"

    aput-object v11, v7, v10

    const/4 v10, 0x7

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v7, v10

    const/16 v10, 0x8

    .line 547
    const-string v11, "delay"

    aput-object v11, v7, v10

    const/16 v10, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v10

    const/16 v10, 0xa

    .line 548
    const-string v11, "onUpdate"

    aput-object v11, v7, v10

    const/16 v10, 0xb

    iget-object v11, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v11, v7, v10

    .line 542
    invoke-static {v5, v8, v9, v7}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 539
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2
.end method

.method private square(F)F
    .locals 1
    .param p1, "d"    # F

    .prologue
    .line 1218
    mul-float v0, p1, p1

    return v0
.end method

.method private startBackgroundAnimation(IF)V
    .locals 6
    .param p1, "duration"    # I
    .param p2, "alpha"    # F

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 747
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 748
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;

    if-eqz v1, :cond_0

    .line 749
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;

    iget-object v1, v1, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 751
    :cond_0
    int-to-long v2, p1

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 752
    const-string v5, "ease"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v5, v1, v4

    const/4 v4, 0x2

    .line 753
    const-string v5, "alpha"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v5, p2

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x4

    .line 754
    const-string v5, "delay"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    .line 751
    invoke-static {v0, v2, v3, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;

    move-result-object v1

    iput-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;

    .line 755
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;

    iget-object v1, v1, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 757
    :cond_1
    return-void
.end method

.method private startWaveAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 711
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 712
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mPointCloud:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;->waveManager:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;->setAlpha(F)V

    .line 713
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mPointCloud:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;->waveManager:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;->setRadius(F)V

    .line 714
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mPointCloud:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;->waveManager:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;

    const-wide/16 v2, 0x546

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    .line 715
    const-string v5, "ease"

    aput-object v5, v4, v8

    const/4 v5, 0x1

    sget-object v6, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 716
    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 717
    const-string v6, "radius"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 718
    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    .line 719
    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    .line 720
    new-instance v6, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$5;

    invoke-direct {v6, p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$5;-><init>(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;)V

    aput-object v6, v4, v5

    .line 714
    invoke-static {v1, v2, v3, v4}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 726
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 727
    return-void
.end method

.method private stopAndHideWaveAnimation()V
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 707
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mPointCloud:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;->waveManager:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$WaveManager;->setAlpha(F)V

    .line 708
    return-void
.end method

.method private switchToState(IFF)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 355
    packed-switch p1, :pswitch_data_0

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 357
    :pswitch_0
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->deactivateTargets()V

    .line 358
    invoke-direct {p0, v1, v1, v2, v4}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 359
    invoke-direct {p0, v1, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 360
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setState([I)V

    .line 361
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v3}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_0

    .line 365
    :pswitch_1
    invoke-direct {p0, v1, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    goto :goto_0

    .line 369
    :pswitch_2
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 370
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->deactivateTargets()V

    .line 371
    invoke-direct {p0, v5}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->showTargets(Z)V

    .line 372
    const/16 v0, 0xc8

    invoke-direct {p0, v0, v3}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 373
    invoke-direct {p0, v5}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->setGrabbedState(I)V

    .line 374
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->announceTargets()V

    goto :goto_0

    .line 380
    :pswitch_3
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 381
    invoke-direct {p0, v1, v1, v3, v4}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 386
    :pswitch_4
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 387
    invoke-direct {p0, v1, v1, v2, v4}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 391
    :pswitch_5
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->doFinish()V

    goto :goto_0

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private trySwitchToFirstTouchState(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x1

    .line 985
    iget v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveCenterX:F

    sub-float v0, p1, v3

    .line 986
    .local v0, "tx":F
    iget v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveCenterY:F

    sub-float v1, p2, v3

    .line 987
    .local v1, "ty":F
    iget-boolean v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-nez v3, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v3

    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getScaledGlowRadiusSquared()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 988
    :cond_0
    const/4 v3, 0x2

    invoke-direct {p0, v3, p1, p2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 989
    invoke-direct {p0, v0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 990
    iput-boolean v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mDragging:Z

    .line 993
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateGlowPosition(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 795
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRing:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->getX()F

    move-result v2

    sub-float v0, p1, v2

    .line 796
    .local v0, "dx":F
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRing:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->getY()F

    move-result v2

    sub-float v1, p2, v2

    .line 797
    .local v1, "dy":F
    iget v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mRingScaleFactor:F

    div-float v2, v3, v2

    mul-float/2addr v0, v2

    .line 798
    iget v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mRingScaleFactor:F

    div-float v2, v3, v2

    mul-float/2addr v1, v2

    .line 799
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mPointCloud:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;

    iget-object v2, v2, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;->glowManager:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;

    iget-object v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRing:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v3}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->getX()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;->setX(F)V

    .line 800
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mPointCloud:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;

    iget-object v2, v2, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;->glowManager:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;

    iget-object v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRing:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v3}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->getY()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;->setY(F)V

    .line 801
    return-void
.end method

.method private updatePointCloudPosition(FF)V
    .locals 1
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mPointCloud:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;

    invoke-virtual {v0, p1, p2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;->setCenter(FF)V

    .line 1197
    return-void
.end method

.method private updateTargetPosition(IFF)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    .line 1155
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getSliceAngle()F

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getAngle(FI)F

    move-result v0

    .line 1156
    .local v0, "angle":F
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->updateTargetPosition(IFFF)V

    .line 1157
    return-void
.end method

.method private updateTargetPosition(IFFF)V
    .locals 6
    .param p1, "i"    # I
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "angle"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 1160
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getRingWidth()F

    move-result v4

    div-float v0, v4, v5

    .line 1161
    .local v0, "placementRadiusX":F
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getRingHeight()F

    move-result v4

    div-float v1, v4, v5

    .line 1162
    .local v1, "placementRadiusY":F
    if-ltz p1, :cond_0

    .line 1163
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1164
    .local v3, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;>;"
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    .line 1165
    .local v2, "targetIcon":Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;
    invoke-virtual {v2, p2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1166
    invoke-virtual {v2, p3}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1167
    float-to-double v4, p4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-virtual {v2, v4}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setX(F)V

    .line 1168
    float-to-double v4, p4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v1

    invoke-virtual {v2, v4}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setY(F)V

    .line 1170
    .end local v2    # "targetIcon":Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;
    .end local v3    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;>;"
    :cond_0
    return-void
.end method

.method private updateTargetPositions(FF)V
    .locals 1
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F

    .prologue
    .line 1173
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->updateTargetPositions(FFZ)V

    .line 1174
    return-void
.end method

.method private updateTargetPositions(FFZ)V
    .locals 4
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "skipActive"    # Z

    .prologue
    .line 1177
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1178
    .local v2, "size":I
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getSliceAngle()F

    move-result v0

    .line 1180
    .local v0, "alpha":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 1185
    return-void

    .line 1181
    :cond_0
    if-eqz p3, :cond_1

    iget v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mActiveTarget:I

    if-eq v1, v3, :cond_2

    .line 1182
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getAngle(FI)F

    move-result v3

    invoke-direct {p0, v1, p1, p2, v3}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->updateTargetPosition(IFFF)V

    .line 1180
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private vibrate()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 566
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    .line 565
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 567
    .local v0, "hapticEnabled":Z
    :goto_0
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 568
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    iget v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mVibrationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 570
    :cond_0
    return-void

    .line 565
    .end local v0    # "hapticEnabled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyTargetTitles(I)V
    .locals 0
    .param p1, "resArrayTitles"    # I

    .prologue
    .line 1399
    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 1400
    return-void
.end method

.method public getDirectionDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 666
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mDirectionDescriptionsResourceId:I

    return v0
.end method

.method public getLayoutingHeight()I
    .locals 1

    .prologue
    .line 1431
    const/4 v0, -0x2

    return v0
.end method

.method public getLayoutingWidth()I
    .locals 1

    .prologue
    .line 1439
    const/4 v0, -0x2

    return v0
.end method

.method public getResourceIdForTarget(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1292
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    .line 1293
    .local v0, "drawable":Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v1

    goto :goto_0
.end method

.method protected getScaledSuggestedMinimumHeight()I
    .locals 4

    .prologue
    .line 332
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRing:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    .line 333
    iget v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v1, v1

    .line 332
    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getScaledSuggestedMinimumWidth()I
    .locals 4

    .prologue
    .line 324
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRing:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    .line 325
    iget v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v1, v1

    .line 324
    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRing:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRing:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTargetDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDescriptionsResourceId:I

    return v0
.end method

.method public getTargetPosition(I)I
    .locals 3
    .param p1, "resourceId"    # I

    .prologue
    .line 1312
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 1318
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 1313
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    .line 1314
    .local v1, "target":Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;
    invoke-virtual {v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 1312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getTargetResourceId()I
    .locals 1

    .prologue
    .line 624
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetResourceId:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1201
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mPointCloud:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;

    invoke-virtual {v3, p1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;->draw(Landroid/graphics/Canvas;)V

    .line 1202
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRing:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v3, p1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1203
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1204
    .local v1, "ntargets":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 1210
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v3, p1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1211
    return-void

    .line 1205
    :cond_0
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    .line 1206
    .local v2, "target":Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;
    if-eqz v2, :cond_1

    .line 1207
    invoke-virtual {v2, p1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1204
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 943
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 944
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 945
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 956
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 957
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 959
    .end local v0    # "action":I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 960
    return v3

    .line 947
    .restart local v0    # "action":I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 950
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 953
    :pswitch_3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 945
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1118
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 1119
    sub-int v5, p4, p2

    .line 1120
    .local v5, "width":I
    sub-int v0, p5, p3

    .line 1124
    .local v0, "height":I
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getRingWidth()F

    move-result v4

    .line 1125
    .local v4, "placementWidth":F
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getRingHeight()F

    move-result v3

    .line 1126
    .local v3, "placementHeight":F
    iget v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mHorizontalInset:I

    int-to-float v6, v6

    .line 1127
    int-to-float v7, v5

    iget v8, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 1126
    add-float v1, v6, v7

    .line 1128
    .local v1, "newWaveCenterX":F
    iget v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mVerticalInset:I

    int-to-float v6, v6

    .line 1129
    int-to-float v7, v0

    iget v8, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v8, v8

    add-float/2addr v8, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 1128
    add-float v2, v6, v7

    .line 1131
    .local v2, "newWaveCenterY":F
    iget-boolean v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mInitialLayout:Z

    if-eqz v6, :cond_0

    .line 1132
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->stopAndHideWaveAnimation()V

    .line 1133
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    .line 1134
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mInitialLayout:Z

    .line 1137
    :cond_0
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRing:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1138
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRing:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1140
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mPointCloud:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;

    iget v7, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mRingScaleFactor:F

    invoke-virtual {v6, v7}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;->setScale(F)V

    .line 1142
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1143
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1145
    invoke-direct {p0, v1, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->updateTargetPositions(FF)V

    .line 1146
    invoke-direct {p0, v1, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->updatePointCloudPosition(FF)V

    .line 1147
    invoke-direct {p0, v1, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 1149
    iput v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveCenterX:F

    .line 1150
    iput v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveCenterY:F

    .line 1152
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1093
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getSuggestedMinimumWidth()I

    move-result v3

    .line 1094
    .local v3, "minimumWidth":I
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getSuggestedMinimumHeight()I

    move-result v2

    .line 1095
    .local v2, "minimumHeight":I
    invoke-direct {p0, p1, v3}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->resolveMeasured(II)I

    move-result v1

    .line 1096
    .local v1, "computedWidth":I
    invoke-direct {p0, p2, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->resolveMeasured(II)I

    move-result v0

    .line 1098
    .local v0, "computedHeight":I
    invoke-direct {p0, v3, v2, v1, v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->computeScaleFactor(IIII)F

    move-result v6

    iput v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mRingScaleFactor:F

    .line 1101
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getScaledSuggestedMinimumWidth()I

    move-result v5

    .line 1102
    .local v5, "scaledWidth":I
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getScaledSuggestedMinimumHeight()I

    move-result v4

    .line 1104
    .local v4, "scaledHeight":I
    sub-int v6, v1, v5

    sub-int v7, v0, v4

    invoke-direct {p0, v6, v7}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->computeInsets(II)V

    .line 1105
    invoke-virtual {p0, v1, v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->setMeasuredDimension(II)V

    .line 1106
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 761
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 762
    .local v0, "action":I
    const/4 v1, 0x0

    .line 763
    .local v1, "handled":Z
    packed-switch v0, :pswitch_data_0

    .line 790
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->invalidate()V

    .line 791
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 766
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->handleDown(Landroid/view/MotionEvent;)V

    .line 767
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 768
    const/4 v1, 0x1

    .line 769
    goto :goto_0

    .line 772
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 773
    const/4 v1, 0x1

    .line 774
    goto :goto_0

    .line 778
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 779
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->handleUp(Landroid/view/MotionEvent;)V

    .line 780
    const/4 v1, 0x1

    .line 781
    goto :goto_0

    .line 784
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 785
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->handleCancel(Landroid/view/MotionEvent;)V

    .line 786
    const/4 v1, 0x1

    goto :goto_0

    .line 791
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 763
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public ping()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 687
    iget v4, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mFeedbackCount:I

    if-lez v4, :cond_1

    .line 688
    const/4 v0, 0x1

    .line 689
    .local v0, "doWaveAnimation":Z
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    .line 692
    .local v1, "waveAnimations":Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;
    invoke-virtual {v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v1, v5}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;

    iget-object v4, v4, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 693
    invoke-virtual {v1, v5}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;

    iget-object v4, v4, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    .line 694
    .local v2, "t":J
    const-wide/16 v4, 0x2a3

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 695
    const/4 v0, 0x0

    .line 699
    .end local v2    # "t":J
    :cond_0
    if-eqz v0, :cond_1

    .line 700
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->startWaveAnimation()V

    .line 703
    .end local v0    # "doWaveAnimation":Z
    .end local v1    # "waveAnimations":Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;
    :cond_1
    return-void
.end method

.method public replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 10
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "existingResId"    # I

    .prologue
    .line 1355
    if-nez p3, :cond_1

    const/4 v5, 0x0

    .line 1383
    :cond_0
    :goto_0
    return v5

    .line 1357
    :cond_1
    const/4 v5, 0x0

    .line 1358
    .local v5, "replaced":Z
    if-eqz p1, :cond_2

    .line 1360
    :try_start_0
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1363
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    .line 1362
    invoke-virtual {v4, p1, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 1363
    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1364
    .local v2, "metaData":Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 1365
    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1366
    .local v1, "iconResId":I
    if-eqz v1, :cond_2

    .line 1367
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v6

    .line 1368
    .local v6, "res":Landroid/content/res/Resources;
    invoke-direct {p0, v6, p3, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->replaceTargetDrawables(Landroid/content/res/Resources;II)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 1379
    .end local v1    # "iconResId":I
    .end local v2    # "metaData":Landroid/os/Bundle;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_2
    :goto_1
    if-nez v5, :cond_0

    .line 1381
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {p0, v7, p3, p3}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->replaceTargetDrawables(Landroid/content/res/Resources;II)Z

    goto :goto_0

    .line 1371
    :catch_0
    move-exception v0

    .line 1372
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "GlowPadView"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to swap drawable; "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1373
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1372
    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1374
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 1375
    .local v3, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string v7, "GlowPadView"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to swap drawable from "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1376
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1375
    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public reset(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 736
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 737
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 738
    invoke-direct {p0, v1, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 739
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->stopAndHideWaveAnimation()V

    .line 740
    invoke-direct {p0, p1, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    .line 741
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v2, v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 742
    invoke-static {}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->reset()V

    .line 743
    return-void
.end method

.method public resetView()V
    .locals 1

    .prologue
    .line 1447
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->reset(Z)V

    .line 1448
    return-void
.end method

.method public resumeAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 298
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 299
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 300
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 301
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 302
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 303
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 304
    return-void
.end method

.method public setDirectionDescriptionsResourceId(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 654
    iput p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mDirectionDescriptionsResourceId:I

    .line 655
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 658
    :cond_0
    return-void
.end method

.method public setEnableTarget(IZ)V
    .locals 3
    .param p1, "resourceId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 1297
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 1304
    :goto_1
    return-void

    .line 1298
    :cond_0
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    .line 1299
    .local v1, "target":Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;
    invoke-virtual {v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1300
    invoke-virtual {v1, p2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setEnabled(Z)V

    goto :goto_1

    .line 1297
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnLeftRightListener(Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;)V
    .locals 0
    .param p1, "l"    # Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;

    .prologue
    .line 1391
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOnLeftRightListener:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;

    .line 1392
    return-void
.end method

.method public setOnTriggerListener(Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$OnTriggerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$OnTriggerListener;

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$OnTriggerListener;

    .line 1215
    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 633
    iput p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDescriptionsResourceId:I

    .line 634
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 637
    :cond_0
    return-void
.end method

.method public setTargetResources(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    if-eqz v0, :cond_0

    .line 617
    iput p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mNewTargetResources:I

    .line 621
    :goto_0
    return-void

    .line 619
    :cond_0
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->internalSetTargetResources(I)V

    goto :goto_0
.end method

.method public setTypeOfLock(Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$TypeOfLock;)V
    .locals 4
    .param p1, "lock"    # Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$TypeOfLock;

    .prologue
    .line 1407
    sget-object v1, Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$TypeOfLock;->CALL:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$TypeOfLock;

    if-ne p1, v1, :cond_0

    .line 1409
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mGlowRadius:F

    .line 1410
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mInnerRadius:F

    .line 1411
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 1412
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 1414
    const v1, 0x7f0e000a

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 1415
    const v1, 0x7f0e0008

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    .line 1416
    const v1, 0x7f0e0009

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->setTargetResources(I)V

    .line 1420
    :cond_0
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1421
    .local v0, "pointDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;

    invoke-direct {v1, v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mPointCloud:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;

    .line 1422
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mPointCloud:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;

    iget v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mInnerRadius:F

    iget v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mOuterRadius:F

    invoke-virtual {v1, v2, v3}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;->makePointCloud(FF)V

    .line 1423
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mPointCloud:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud;->glowManager:Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;

    iget v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mGlowRadius:F

    invoke-virtual {v1, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/PointCloud$GlowManager;->setRadius(F)V

    .line 1424
    return-void
.end method

.method public setVibrateEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 675
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 676
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    .line 680
    :goto_0
    return-void

    .line 678
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method

.method public suspendAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 292
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 293
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 294
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 295
    return-void
.end method
