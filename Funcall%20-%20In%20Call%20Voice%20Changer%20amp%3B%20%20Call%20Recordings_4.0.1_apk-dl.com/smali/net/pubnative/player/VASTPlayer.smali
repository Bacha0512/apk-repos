.class public Lnet/pubnative/player/VASTPlayer;
.super Landroid/widget/RelativeLayout;
.source "VASTPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/player/VASTPlayer$6;,
        Lnet/pubnative/player/VASTPlayer$PlayerState;,
        Lnet/pubnative/player/VASTPlayer$Listener;,
        Lnet/pubnative/player/VASTPlayer$CampaignType;
    }
.end annotation


# static fields
.field private static final MAX_PROGRESS_TRACKING_POINTS:I = 0x14

.field private static final TAG:Ljava/lang/String;

.field private static final TEXT_BUFFERING:Ljava/lang/String; = "Buffering..."

.field private static final TIMER_LAYOUT_INTERVAL:J = 0x32L

.field private static final TIMER_PROGRESS_INTERVAL:J = 0x32L

.field private static final TIMER_TRACKING_INTERVAL:J = 0xfaL


# instance fields
.field private mCampaignType:Lnet/pubnative/player/VASTPlayer$CampaignType;

.field private mCountDown:Lnet/pubnative/player/widget/CountDownView;

.field private mIsBufferingShown:Z

.field private mIsDataSourceSet:Z

.field private mIsVideoMute:Z

.field private mLayoutTimer:Ljava/util/Timer;

.field private mListener:Lnet/pubnative/player/VASTPlayer$Listener;

.field private mLoader:Landroid/view/View;

.field private mLoaderText:Landroid/widget/TextView;

.field private mMainHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMute:Landroid/widget/ImageView;

.field private mOpen:Landroid/view/View;

.field private mPlayer:Landroid/view/View;

.field private mPlayerState:Lnet/pubnative/player/VASTPlayer$PlayerState;

.field private mProgressTimer:Ljava/util/Timer;

.field private mProgressTracker:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQuartile:I

.field private mRoot:Landroid/view/View;

.field private mSkip:Landroid/widget/TextView;

.field private mSkipDelay:I

.field private mSkipName:Ljava/lang/String;

.field private mSurface:Landroid/view/SurfaceView;

.field private mTargetAspect:D

.field private mTrackingEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTrackingEventsTimer:Ljava/util/Timer;

.field private mVastModel:Lnet/pubnative/player/model/VASTModel;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lnet/pubnative/player/VASTPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 116
    iput-object v1, p0, Lnet/pubnative/player/VASTPlayer;->mListener:Lnet/pubnative/player/VASTPlayer$Listener;

    .line 154
    iput-object v1, p0, Lnet/pubnative/player/VASTPlayer;->mMainHandler:Landroid/os/Handler;

    .line 155
    iput v0, p0, Lnet/pubnative/player/VASTPlayer;->mVideoHeight:I

    .line 156
    iput v0, p0, Lnet/pubnative/player/VASTPlayer;->mVideoWidth:I

    .line 157
    iput-boolean v0, p0, Lnet/pubnative/player/VASTPlayer;->mIsVideoMute:Z

    .line 158
    iput-boolean v0, p0, Lnet/pubnative/player/VASTPlayer;->mIsBufferingShown:Z

    .line 159
    iput-boolean v0, p0, Lnet/pubnative/player/VASTPlayer;->mIsDataSourceSet:Z

    .line 160
    iput v0, p0, Lnet/pubnative/player/VASTPlayer;->mQuartile:I

    .line 161
    sget-object v0, Lnet/pubnative/player/VASTPlayer$CampaignType;->CPM:Lnet/pubnative/player/VASTPlayer$CampaignType;

    iput-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mCampaignType:Lnet/pubnative/player/VASTPlayer$CampaignType;

    .line 162
    sget-object v0, Lnet/pubnative/player/VASTPlayer$PlayerState;->Empty:Lnet/pubnative/player/VASTPlayer$PlayerState;

    iput-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mPlayerState:Lnet/pubnative/player/VASTPlayer$PlayerState;

    .line 163
    iput-object v1, p0, Lnet/pubnative/player/VASTPlayer;->mProgressTracker:Ljava/util/List;

    .line 164
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lnet/pubnative/player/VASTPlayer;->mTargetAspect:D

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 402
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    iput-object v1, p0, Lnet/pubnative/player/VASTPlayer;->mListener:Lnet/pubnative/player/VASTPlayer$Listener;

    .line 154
    iput-object v1, p0, Lnet/pubnative/player/VASTPlayer;->mMainHandler:Landroid/os/Handler;

    .line 155
    iput v0, p0, Lnet/pubnative/player/VASTPlayer;->mVideoHeight:I

    .line 156
    iput v0, p0, Lnet/pubnative/player/VASTPlayer;->mVideoWidth:I

    .line 157
    iput-boolean v0, p0, Lnet/pubnative/player/VASTPlayer;->mIsVideoMute:Z

    .line 158
    iput-boolean v0, p0, Lnet/pubnative/player/VASTPlayer;->mIsBufferingShown:Z

    .line 159
    iput-boolean v0, p0, Lnet/pubnative/player/VASTPlayer;->mIsDataSourceSet:Z

    .line 160
    iput v0, p0, Lnet/pubnative/player/VASTPlayer;->mQuartile:I

    .line 161
    sget-object v0, Lnet/pubnative/player/VASTPlayer$CampaignType;->CPM:Lnet/pubnative/player/VASTPlayer$CampaignType;

    iput-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mCampaignType:Lnet/pubnative/player/VASTPlayer$CampaignType;

    .line 162
    sget-object v0, Lnet/pubnative/player/VASTPlayer$PlayerState;->Empty:Lnet/pubnative/player/VASTPlayer$PlayerState;

    iput-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mPlayerState:Lnet/pubnative/player/VASTPlayer$PlayerState;

    .line 163
    iput-object v1, p0, Lnet/pubnative/player/VASTPlayer;->mProgressTracker:Ljava/util/List;

    .line 164
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lnet/pubnative/player/VASTPlayer;->mTargetAspect:D

    .line 404
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMainHandler:Landroid/os/Handler;

    .line 406
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->createLayout()V

    .line 407
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->setEmptyState()V

    .line 408
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    iput-object v1, p0, Lnet/pubnative/player/VASTPlayer;->mListener:Lnet/pubnative/player/VASTPlayer$Listener;

    .line 154
    iput-object v1, p0, Lnet/pubnative/player/VASTPlayer;->mMainHandler:Landroid/os/Handler;

    .line 155
    iput v0, p0, Lnet/pubnative/player/VASTPlayer;->mVideoHeight:I

    .line 156
    iput v0, p0, Lnet/pubnative/player/VASTPlayer;->mVideoWidth:I

    .line 157
    iput-boolean v0, p0, Lnet/pubnative/player/VASTPlayer;->mIsVideoMute:Z

    .line 158
    iput-boolean v0, p0, Lnet/pubnative/player/VASTPlayer;->mIsBufferingShown:Z

    .line 159
    iput-boolean v0, p0, Lnet/pubnative/player/VASTPlayer;->mIsDataSourceSet:Z

    .line 160
    iput v0, p0, Lnet/pubnative/player/VASTPlayer;->mQuartile:I

    .line 161
    sget-object v0, Lnet/pubnative/player/VASTPlayer$CampaignType;->CPM:Lnet/pubnative/player/VASTPlayer$CampaignType;

    iput-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mCampaignType:Lnet/pubnative/player/VASTPlayer$CampaignType;

    .line 162
    sget-object v0, Lnet/pubnative/player/VASTPlayer$PlayerState;->Empty:Lnet/pubnative/player/VASTPlayer$PlayerState;

    iput-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mPlayerState:Lnet/pubnative/player/VASTPlayer$PlayerState;

    .line 163
    iput-object v1, p0, Lnet/pubnative/player/VASTPlayer;->mProgressTracker:Ljava/util/List;

    .line 164
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lnet/pubnative/player/VASTPlayer;->mTargetAspect:D

    .line 173
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lnet/pubnative/player/VASTPlayer;)V
    .locals 0
    .param p0, "x0"    # Lnet/pubnative/player/VASTPlayer;

    .prologue
    .line 68
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->createMediaPlayer()V

    return-void
.end method

.method static synthetic access$1000(Lnet/pubnative/player/VASTPlayer;Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;)V
    .locals 0
    .param p0, "x0"    # Lnet/pubnative/player/VASTPlayer;
    .param p1, "x1"    # Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lnet/pubnative/player/VASTPlayer;->processEvent(Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;)V

    return-void
.end method

.method static synthetic access$1100(Lnet/pubnative/player/VASTPlayer;)V
    .locals 0
    .param p0, "x0"    # Lnet/pubnative/player/VASTPlayer;

    .prologue
    .line 68
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->invokeOnPlayerPlaybackStart()V

    return-void
.end method

.method static synthetic access$1200(Lnet/pubnative/player/VASTPlayer;)V
    .locals 0
    .param p0, "x0"    # Lnet/pubnative/player/VASTPlayer;

    .prologue
    .line 68
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->stopQuartileTimer()V

    return-void
.end method

.method static synthetic access$1300(Lnet/pubnative/player/VASTPlayer;)Lnet/pubnative/player/widget/CountDownView;
    .locals 1
    .param p0, "x0"    # Lnet/pubnative/player/VASTPlayer;

    .prologue
    .line 68
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mCountDown:Lnet/pubnative/player/widget/CountDownView;

    return-object v0
.end method

.method static synthetic access$1400(Lnet/pubnative/player/VASTPlayer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/pubnative/player/VASTPlayer;

    .prologue
    .line 68
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mSkipName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lnet/pubnative/player/VASTPlayer;)I
    .locals 1
    .param p0, "x0"    # Lnet/pubnative/player/VASTPlayer;

    .prologue
    .line 68
    iget v0, p0, Lnet/pubnative/player/VASTPlayer;->mSkipDelay:I

    return v0
.end method

.method static synthetic access$1600(Lnet/pubnative/player/VASTPlayer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnet/pubnative/player/VASTPlayer;

    .prologue
    .line 68
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mSkip:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lnet/pubnative/player/VASTPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lnet/pubnative/player/VASTPlayer;

    .prologue
    .line 68
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$300(Lnet/pubnative/player/VASTPlayer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/pubnative/player/VASTPlayer;

    .prologue
    .line 68
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mProgressTracker:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lnet/pubnative/player/VASTPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lnet/pubnative/player/VASTPlayer;

    .prologue
    .line 68
    iget-boolean v0, p0, Lnet/pubnative/player/VASTPlayer;->mIsBufferingShown:Z

    return v0
.end method

.method static synthetic access$402(Lnet/pubnative/player/VASTPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/pubnative/player/VASTPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lnet/pubnative/player/VASTPlayer;->mIsBufferingShown:Z

    return p1
.end method

.method static synthetic access$500(Lnet/pubnative/player/VASTPlayer;)V
    .locals 0
    .param p0, "x0"    # Lnet/pubnative/player/VASTPlayer;

    .prologue
    .line 68
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->hideLoader()V

    return-void
.end method

.method static synthetic access$600(Lnet/pubnative/player/VASTPlayer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lnet/pubnative/player/VASTPlayer;

    .prologue
    .line 68
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lnet/pubnative/player/VASTPlayer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnet/pubnative/player/VASTPlayer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lnet/pubnative/player/VASTPlayer;->showLoader(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lnet/pubnative/player/VASTPlayer;)I
    .locals 1
    .param p0, "x0"    # Lnet/pubnative/player/VASTPlayer;

    .prologue
    .line 68
    iget v0, p0, Lnet/pubnative/player/VASTPlayer;->mQuartile:I

    return v0
.end method

.method static synthetic access$808(Lnet/pubnative/player/VASTPlayer;)I
    .locals 2
    .param p0, "x0"    # Lnet/pubnative/player/VASTPlayer;

    .prologue
    .line 68
    iget v0, p0, Lnet/pubnative/player/VASTPlayer;->mQuartile:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/pubnative/player/VASTPlayer;->mQuartile:I

    return v0
.end method

.method static synthetic access$900(Lnet/pubnative/player/VASTPlayer;)V
    .locals 0
    .param p0, "x0"    # Lnet/pubnative/player/VASTPlayer;

    .prologue
    .line 68
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->processImpressions()V

    return-void
.end method

.method private canSetState(Lnet/pubnative/player/VASTPlayer$PlayerState;)Z
    .locals 5
    .param p1, "playerState"    # Lnet/pubnative/player/VASTPlayer$PlayerState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 239
    const/4 v0, 0x0

    .line 241
    .local v0, "result":Z
    sget-object v3, Lnet/pubnative/player/VASTPlayer$6;->$SwitchMap$net$pubnative$player$VASTPlayer$PlayerState:[I

    invoke-virtual {p1}, Lnet/pubnative/player/VASTPlayer$PlayerState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 261
    :goto_0
    return v0

    .line 244
    :pswitch_0
    const/4 v0, 0x1

    .line 245
    goto :goto_0

    .line 247
    :pswitch_1
    const/4 v0, 0x1

    .line 248
    goto :goto_0

    .line 250
    :pswitch_2
    sget-object v3, Lnet/pubnative/player/VASTPlayer$PlayerState;->Loading:Lnet/pubnative/player/VASTPlayer$PlayerState;

    iget-object v4, p0, Lnet/pubnative/player/VASTPlayer;->mPlayerState:Lnet/pubnative/player/VASTPlayer$PlayerState;

    if-ne v3, v4, :cond_0

    move v0, v1

    .line 251
    :goto_1
    goto :goto_0

    :cond_0
    move v0, v2

    .line 250
    goto :goto_1

    .line 253
    :pswitch_3
    iget-object v3, p0, Lnet/pubnative/player/VASTPlayer;->mPlayerState:Lnet/pubnative/player/VASTPlayer$PlayerState;

    sget-object v4, Lnet/pubnative/player/VASTPlayer$PlayerState;->Ready:Lnet/pubnative/player/VASTPlayer$PlayerState;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lnet/pubnative/player/VASTPlayer;->mPlayerState:Lnet/pubnative/player/VASTPlayer$PlayerState;

    sget-object v4, Lnet/pubnative/player/VASTPlayer$PlayerState;->Pause:Lnet/pubnative/player/VASTPlayer$PlayerState;

    if-ne v3, v4, :cond_2

    :cond_1
    move v0, v1

    .line 255
    :goto_2
    goto :goto_0

    :cond_2
    move v0, v2

    .line 253
    goto :goto_2

    .line 257
    :pswitch_4
    const/4 v0, 0x1

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private cleanMediaPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 764
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "cleanUpMediaPlayer"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 768
    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->turnVolumeOff()V

    .line 769
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 770
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 771
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 772
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 773
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 774
    iput-object v2, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 776
    :cond_0
    return-void
.end method

.method private createLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 631
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "createLayout"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mRoot:Landroid/view/View;

    if-nez v0, :cond_0

    .line 635
    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnet/pubnative/player/R$layout;->pubnative_player:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mRoot:Landroid/view/View;

    .line 637
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mRoot:Landroid/view/View;

    sget v1, Lnet/pubnative/player/R$id;->player:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mPlayer:Landroid/view/View;

    .line 640
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mPlayer:Landroid/view/View;

    sget v1, Lnet/pubnative/player/R$id;->surface:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mSurface:Landroid/view/SurfaceView;

    .line 641
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lnet/pubnative/player/VASTPlayer$1;

    invoke-direct {v1, p0}, Lnet/pubnative/player/VASTPlayer$1;-><init>(Lnet/pubnative/player/VASTPlayer;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 672
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mPlayer:Landroid/view/View;

    sget v1, Lnet/pubnative/player/R$id;->mute:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMute:Landroid/widget/ImageView;

    .line 673
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMute:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMute:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mPlayer:Landroid/view/View;

    sget v1, Lnet/pubnative/player/R$id;->count_down:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/pubnative/player/widget/CountDownView;

    iput-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mCountDown:Lnet/pubnative/player/widget/CountDownView;

    .line 677
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mCountDown:Lnet/pubnative/player/widget/CountDownView;

    invoke-virtual {v0, v3}, Lnet/pubnative/player/widget/CountDownView;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mPlayer:Landroid/view/View;

    sget v1, Lnet/pubnative/player/R$id;->skip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mSkip:Landroid/widget/TextView;

    .line 680
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 681
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mRoot:Landroid/view/View;

    sget v1, Lnet/pubnative/player/R$id;->loader:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mLoader:Landroid/view/View;

    .line 685
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mRoot:Landroid/view/View;

    sget v1, Lnet/pubnative/player/R$id;->loader_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mLoaderText:Landroid/widget/TextView;

    .line 686
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mLoaderText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mRoot:Landroid/view/View;

    sget v1, Lnet/pubnative/player/R$id;->open:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mOpen:Landroid/view/View;

    .line 689
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mOpen:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mOpen:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v0}, Lnet/pubnative/player/VASTPlayer;->addView(Landroid/view/View;)V

    .line 694
    :cond_0
    return-void
.end method

.method private createMediaPlayer()V
    .locals 2

    .prologue
    .line 749
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "createMediaPlayer"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 753
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 754
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 755
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 756
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 757
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 758
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 760
    :cond_0
    return-void
.end method

.method private fireUrls(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 907
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v3, "fireUrls"

    invoke-static {v2, v3}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    if-eqz p1, :cond_0

    .line 911
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 913
    .local v1, "url":Ljava/lang/String;
    sget-object v2, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tfiring url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    invoke-static {v1}, Lnet/pubnative/player/util/HttpTools;->httpGetURL(Ljava/lang/String;)V

    goto :goto_0

    .line 919
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    sget-object v2, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v3, "\turl list is null"

    invoke-static {v2, v3}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    :cond_1
    return-void
.end method

.method private hideLoader()V
    .locals 2

    .prologue
    .line 707
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mLoader:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 708
    return-void
.end method

.method private hideOpen()V
    .locals 2

    .prologue
    .line 712
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mOpen:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 713
    return-void
.end method

.method private hidePlayerLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 732
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMute:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 734
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mCountDown:Lnet/pubnative/player/widget/CountDownView;

    invoke-virtual {v0, v1}, Lnet/pubnative/player/widget/CountDownView;->setVisibility(I)V

    .line 735
    return-void
.end method

.method private hideSurface()V
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mSurface:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 723
    return-void
.end method

.method private invokeOnFail(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 1184
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "invokeOnFail"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mListener:Lnet/pubnative/player/VASTPlayer$Listener;

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mListener:Lnet/pubnative/player/VASTPlayer$Listener;

    invoke-interface {v0, p1}, Lnet/pubnative/player/VASTPlayer$Listener;->onVASTPlayerFail(Ljava/lang/Exception;)V

    .line 1190
    :cond_0
    return-void
.end method

.method private invokeOnPlayerLoadFinish()V
    .locals 2

    .prologue
    .line 1174
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "invokeOnPlayerLoadFinish"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mListener:Lnet/pubnative/player/VASTPlayer$Listener;

    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mListener:Lnet/pubnative/player/VASTPlayer$Listener;

    invoke-interface {v0}, Lnet/pubnative/player/VASTPlayer$Listener;->onVASTPlayerLoadFinish()V

    .line 1180
    :cond_0
    return-void
.end method

.method private invokeOnPlayerOpenOffer()V
    .locals 2

    .prologue
    .line 1164
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "invokeOnPlayerClick"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mListener:Lnet/pubnative/player/VASTPlayer$Listener;

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mListener:Lnet/pubnative/player/VASTPlayer$Listener;

    invoke-interface {v0}, Lnet/pubnative/player/VASTPlayer$Listener;->onVASTPlayerOpenOffer()V

    .line 1170
    :cond_0
    return-void
.end method

.method private invokeOnPlayerPlaybackFinish()V
    .locals 2

    .prologue
    .line 1204
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "invokeOnPlayerPlaybackFinish"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mListener:Lnet/pubnative/player/VASTPlayer$Listener;

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mListener:Lnet/pubnative/player/VASTPlayer$Listener;

    invoke-interface {v0}, Lnet/pubnative/player/VASTPlayer$Listener;->onVASTPlayerPlaybackFinish()V

    .line 1210
    :cond_0
    return-void
.end method

.method private invokeOnPlayerPlaybackStart()V
    .locals 2

    .prologue
    .line 1194
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "invokeOnPlayerPlaybackStart"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mListener:Lnet/pubnative/player/VASTPlayer$Listener;

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mListener:Lnet/pubnative/player/VASTPlayer$Listener;

    invoke-interface {v0}, Lnet/pubnative/player/VASTPlayer$Listener;->onVASTPlayerPlaybackStart()V

    .line 1200
    :cond_0
    return-void
.end method

.method private openOffer()V
    .locals 9

    .prologue
    .line 596
    iget-object v6, p0, Lnet/pubnative/player/VASTPlayer;->mVastModel:Lnet/pubnative/player/model/VASTModel;

    invoke-virtual {v6}, Lnet/pubnative/player/model/VASTModel;->getVideoClicks()Lnet/pubnative/player/model/VideoClicks;

    move-result-object v6

    invoke-virtual {v6}, Lnet/pubnative/player/model/VideoClicks;->getClickThrough()Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "clickThroughUrl":Ljava/lang/String;
    sget-object v6, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openOffer - clickThrough url: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v6, p0, Lnet/pubnative/player/VASTPlayer;->mVastModel:Lnet/pubnative/player/model/VASTModel;

    invoke-virtual {v6}, Lnet/pubnative/player/model/VASTModel;->getVideoClicks()Lnet/pubnative/player/model/VideoClicks;

    move-result-object v6

    invoke-virtual {v6}, Lnet/pubnative/player/model/VideoClicks;->getClickTracking()Ljava/util/List;

    move-result-object v5

    .line 601
    .local v5, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v5}, Lnet/pubnative/player/VASTPlayer;->fireUrls(Ljava/util/List;)V

    .line 606
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 607
    .local v4, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 608
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 610
    .local v3, "resolvable":Landroid/content/pm/ResolveInfo;
    if-nez v3, :cond_0

    .line 612
    sget-object v6, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v7, "openOffer -clickthrough error occured, uri unresolvable"

    invoke-static {v6, v7}, Lnet/pubnative/player/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "resolvable":Landroid/content/pm/ResolveInfo;
    .end local v4    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 617
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "resolvable":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->invokeOnPlayerOpenOffer()V

    .line 618
    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 621
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "resolvable":Landroid/content/pm/ResolveInfo;
    .end local v4    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 623
    .local v1, "e":Ljava/lang/NullPointerException;
    sget-object v6, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lnet/pubnative/player/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private processErrorEvent()V
    .locals 3

    .prologue
    .line 899
    sget-object v1, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v2, "processErrorEvent"

    invoke-static {v1, v2}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    iget-object v1, p0, Lnet/pubnative/player/VASTPlayer;->mVastModel:Lnet/pubnative/player/model/VASTModel;

    invoke-virtual {v1}, Lnet/pubnative/player/model/VASTModel;->getErrorUrl()Ljava/util/List;

    move-result-object v0

    .line 902
    .local v0, "errorUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lnet/pubnative/player/VASTPlayer;->fireUrls(Ljava/util/List;)V

    .line 903
    return-void
.end method

.method private processEvent(Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;)V
    .locals 4
    .param p1, "eventName"    # Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;

    .prologue
    .line 880
    sget-object v1, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iget-object v1, p0, Lnet/pubnative/player/VASTPlayer;->mTrackingEventMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 884
    iget-object v1, p0, Lnet/pubnative/player/VASTPlayer;->mTrackingEventMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 885
    .local v0, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lnet/pubnative/player/VASTPlayer;->fireUrls(Ljava/util/List;)V

    .line 887
    .end local v0    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private processImpressions()V
    .locals 3

    .prologue
    .line 891
    sget-object v1, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v2, "processImpressions"

    invoke-static {v1, v2}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    iget-object v1, p0, Lnet/pubnative/player/VASTPlayer;->mVastModel:Lnet/pubnative/player/model/VASTModel;

    invoke-virtual {v1}, Lnet/pubnative/player/model/VASTModel;->getImpressions()Ljava/util/List;

    move-result-object v0

    .line 894
    .local v0, "impressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lnet/pubnative/player/VASTPlayer;->fireUrls(Ljava/util/List;)V

    .line 895
    return-void
.end method

.method private setEmptyState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 301
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setEmptyState"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->hideSurface()V

    .line 305
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->hidePlayerLayout()V

    .line 306
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->hideOpen()V

    .line 307
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->hideLoader()V

    .line 313
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->stopTimers()V

    .line 314
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->cleanMediaPlayer()V

    .line 316
    iput-boolean v3, p0, Lnet/pubnative/player/VASTPlayer;->mIsDataSourceSet:Z

    .line 317
    iput-object v2, p0, Lnet/pubnative/player/VASTPlayer;->mVastModel:Lnet/pubnative/player/model/VASTModel;

    .line 318
    iput v3, p0, Lnet/pubnative/player/VASTPlayer;->mQuartile:I

    .line 319
    iput-object v2, p0, Lnet/pubnative/player/VASTPlayer;->mTrackingEventMap:Ljava/util/HashMap;

    .line 320
    iput-object v2, p0, Lnet/pubnative/player/VASTPlayer;->mProgressTracker:Ljava/util/List;

    .line 321
    return-void
.end method

.method private setLoadingState()V
    .locals 2

    .prologue
    .line 325
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setLoadingState"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->hidePlayerLayout()V

    .line 330
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->showSurface()V

    .line 331
    const-string v0, ""

    invoke-direct {p0, v0}, Lnet/pubnative/player/VASTPlayer;->showLoader(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mVastModel:Lnet/pubnative/player/model/VASTModel;

    invoke-virtual {v0}, Lnet/pubnative/player/model/VASTModel;->getTrackingUrls()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mTrackingEventMap:Ljava/util/HashMap;

    .line 334
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->createMediaPlayer()V

    .line 335
    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->turnVolumeOff()V

    .line 336
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->startCaching()V

    .line 337
    return-void
.end method

.method private setPauseState()V
    .locals 2

    .prologue
    .line 379
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setPauseState"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->hideLoader()V

    .line 382
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->hidePlayerLayout()V

    .line 384
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->showOpen()V

    .line 385
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->showSurface()V

    .line 386
    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->turnVolumeOff()V

    .line 387
    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->refreshVolume()V

    .line 388
    return-void
.end method

.method private setPlayingState()V
    .locals 3

    .prologue
    .line 354
    sget-object v1, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v2, "setPlayingState"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->hideLoader()V

    .line 357
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->showOpen()V

    .line 358
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->showSurface()V

    .line 359
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->showPlayerLayout()V

    .line 364
    iget-object v1, p0, Lnet/pubnative/player/VASTPlayer;->mSurface:Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/pubnative/player/VASTPlayer;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lnet/pubnative/player/VASTPlayer;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 367
    .local v0, "surface":Landroid/view/Surface;
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 371
    .end local v0    # "surface":Landroid/view/Surface;
    :cond_0
    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->calculateAspectRatio()V

    .line 372
    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->refreshVolume()V

    .line 373
    iget-object v1, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 374
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->startTimers()V

    .line 375
    return-void
.end method

.method private setReadyState()V
    .locals 2

    .prologue
    .line 341
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setReadyState"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->hideLoader()V

    .line 345
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->hidePlayerLayout()V

    .line 346
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->showOpen()V

    .line 347
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->showSurface()V

    .line 349
    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->turnVolumeOff()V

    .line 350
    return-void
.end method

.method private setState(Lnet/pubnative/player/VASTPlayer$PlayerState;)V
    .locals 3
    .param p1, "playerState"    # Lnet/pubnative/player/VASTPlayer$PlayerState;

    .prologue
    .line 272
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lnet/pubnative/player/VASTPlayer$PlayerState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-direct {p0, p1}, Lnet/pubnative/player/VASTPlayer;->canSetState(Lnet/pubnative/player/VASTPlayer$PlayerState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    sget-object v0, Lnet/pubnative/player/VASTPlayer$6;->$SwitchMap$net$pubnative$player$VASTPlayer$PlayerState:[I

    invoke-virtual {p1}, Lnet/pubnative/player/VASTPlayer$PlayerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 295
    :goto_0
    iput-object p1, p0, Lnet/pubnative/player/VASTPlayer;->mPlayerState:Lnet/pubnative/player/VASTPlayer$PlayerState;

    .line 297
    :cond_0
    return-void

    .line 279
    :pswitch_0
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->setEmptyState()V

    goto :goto_0

    .line 282
    :pswitch_1
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->setLoadingState()V

    goto :goto_0

    .line 285
    :pswitch_2
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->setReadyState()V

    goto :goto_0

    .line 288
    :pswitch_3
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->setPlayingState()V

    goto :goto_0

    .line 291
    :pswitch_4
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->setPauseState()V

    goto :goto_0

    .line 276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private showLoader(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 698
    iget-object v1, p0, Lnet/pubnative/player/VASTPlayer;->mPlayerState:Lnet/pubnative/player/VASTPlayer$PlayerState;

    sget-object v2, Lnet/pubnative/player/VASTPlayer$PlayerState;->Pause:Lnet/pubnative/player/VASTPlayer$PlayerState;

    if-eq v1, v2, :cond_1

    .line 699
    iget-object v1, p0, Lnet/pubnative/player/VASTPlayer;->mLoader:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 700
    iget-object v1, p0, Lnet/pubnative/player/VASTPlayer;->mLoaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    iget-object v1, p0, Lnet/pubnative/player/VASTPlayer;->mLoaderText:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x8

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 703
    :cond_1
    return-void
.end method

.method private showOpen()V
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mOpen:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 718
    return-void
.end method

.method private showPlayerLayout()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 739
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer;->mSkip:Landroid/widget/TextView;

    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mSkipName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMute:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mCountDown:Lnet/pubnative/player/widget/CountDownView;

    invoke-virtual {v0, v1}, Lnet/pubnative/player/widget/CountDownView;->setVisibility(I)V

    .line 742
    return-void

    :cond_0
    move v0, v1

    .line 739
    goto :goto_0
.end method

.method private showSurface()V
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mSurface:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 728
    return-void
.end method

.method private startCaching()V
    .locals 4

    .prologue
    .line 857
    sget-object v2, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v3, "startCaching"

    invoke-static {v2, v3}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :try_start_0
    iget-boolean v2, p0, Lnet/pubnative/player/VASTPlayer;->mIsDataSourceSet:Z

    if-nez v2, :cond_0

    .line 862
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/pubnative/player/VASTPlayer;->mIsDataSourceSet:Z

    .line 863
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer;->mVastModel:Lnet/pubnative/player/model/VASTModel;

    invoke-virtual {v2}, Lnet/pubnative/player/model/VASTModel;->getPickedMediaFileURL()Ljava/lang/String;

    move-result-object v1

    .line 864
    .local v1, "videoURL":Ljava/lang/String;
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 867
    .end local v1    # "videoURL":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    :goto_0
    return-void

    .line 869
    :catch_0
    move-exception v0

    .line 871
    .local v0, "exception":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lnet/pubnative/player/VASTPlayer;->invokeOnFail(Ljava/lang/Exception;)V

    .line 872
    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->destroy()V

    goto :goto_0
.end method

.method private startLayoutTimer()V
    .locals 6

    .prologue
    .line 1101
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "startLayoutTimer"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mLayoutTimer:Ljava/util/Timer;

    .line 1104
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mLayoutTimer:Ljava/util/Timer;

    new-instance v1, Lnet/pubnative/player/VASTPlayer$4;

    invoke-direct {v1, p0}, Lnet/pubnative/player/VASTPlayer$4;-><init>(Lnet/pubnative/player/VASTPlayer;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 1146
    return-void
.end method

.method private startQuartileTimer()V
    .locals 6

    .prologue
    .line 1024
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "startQuartileTimer"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    const/4 v0, 0x0

    iput v0, p0, Lnet/pubnative/player/VASTPlayer;->mQuartile:I

    .line 1028
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mTrackingEventsTimer:Ljava/util/Timer;

    .line 1029
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mTrackingEventsTimer:Ljava/util/Timer;

    new-instance v1, Lnet/pubnative/player/VASTPlayer$3;

    invoke-direct {v1, p0}, Lnet/pubnative/player/VASTPlayer$3;-><init>(Lnet/pubnative/player/VASTPlayer;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xfa

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 1084
    return-void
.end method

.method private startTimers()V
    .locals 2

    .prologue
    .line 940
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "startTimers"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->stopTimers()V

    .line 946
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->startQuartileTimer()V

    .line 947
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->startLayoutTimer()V

    .line 948
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->startVideoProgressTimer()V

    .line 949
    return-void
.end method

.method private startVideoProgressTimer()V
    .locals 6

    .prologue
    .line 955
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "startVideoProgressTimer"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mProgressTimer:Ljava/util/Timer;

    .line 958
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mProgressTracker:Ljava/util/List;

    .line 959
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mProgressTimer:Ljava/util/Timer;

    new-instance v1, Lnet/pubnative/player/VASTPlayer$2;

    invoke-direct {v1, p0}, Lnet/pubnative/player/VASTPlayer$2;-><init>(Lnet/pubnative/player/VASTPlayer;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 1007
    return-void
.end method

.method private stopLayoutTimer()V
    .locals 2

    .prologue
    .line 1150
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "stopLayoutTimer"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mLayoutTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mLayoutTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1155
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mLayoutTimer:Ljava/util/Timer;

    .line 1157
    :cond_0
    return-void
.end method

.method private stopQuartileTimer()V
    .locals 2

    .prologue
    .line 1088
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "stopQuartileTimer"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mTrackingEventsTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mTrackingEventsTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1093
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mTrackingEventsTimer:Ljava/util/Timer;

    .line 1095
    :cond_0
    return-void
.end method

.method private stopTimers()V
    .locals 2

    .prologue
    .line 929
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "stopTimers"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->stopQuartileTimer()V

    .line 932
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->stopLayoutTimer()V

    .line 933
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->stopVideoProgressTimer()V

    .line 935
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 936
    return-void
.end method

.method private stopVideoProgressTimer()V
    .locals 2

    .prologue
    .line 1011
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "stopVideoProgressTimer"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mProgressTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mProgressTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1016
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mProgressTimer:Ljava/util/Timer;

    .line 1018
    :cond_0
    return-void
.end method

.method private updateLayout()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x7

    const/4 v7, 0x6

    const/4 v6, 0x5

    .line 831
    sget-object v4, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v5, "updateLayout"

    invoke-static {v4, v5}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    iget-object v4, p0, Lnet/pubnative/player/VASTPlayer;->mMute:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 834
    .local v1, "muteParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v4, Lnet/pubnative/player/R$id;->surface:I

    invoke-virtual {v1, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 835
    sget v4, Lnet/pubnative/player/R$id;->surface:I

    invoke-virtual {v1, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 836
    iget-object v4, p0, Lnet/pubnative/player/VASTPlayer;->mMute:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 838
    iget-object v4, p0, Lnet/pubnative/player/VASTPlayer;->mOpen:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 839
    .local v2, "openParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v4, Lnet/pubnative/player/R$id;->surface:I

    invoke-virtual {v2, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 840
    sget v4, Lnet/pubnative/player/R$id;->surface:I

    invoke-virtual {v2, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 841
    iget-object v4, p0, Lnet/pubnative/player/VASTPlayer;->mOpen:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 843
    iget-object v4, p0, Lnet/pubnative/player/VASTPlayer;->mCountDown:Lnet/pubnative/player/widget/CountDownView;

    invoke-virtual {v4}, Lnet/pubnative/player/widget/CountDownView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 844
    .local v0, "countDownParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v4, Lnet/pubnative/player/R$id;->surface:I

    invoke-virtual {v0, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 845
    sget v4, Lnet/pubnative/player/R$id;->surface:I

    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 846
    iget-object v4, p0, Lnet/pubnative/player/VASTPlayer;->mCountDown:Lnet/pubnative/player/widget/CountDownView;

    invoke-virtual {v4, v0}, Lnet/pubnative/player/widget/CountDownView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 848
    iget-object v4, p0, Lnet/pubnative/player/VASTPlayer;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 849
    .local v3, "skipParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v4, Lnet/pubnative/player/R$id;->surface:I

    invoke-virtual {v3, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 850
    sget v4, Lnet/pubnative/player/R$id;->surface:I

    invoke-virtual {v3, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 851
    iget-object v4, p0, Lnet/pubnative/player/VASTPlayer;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 853
    return-void
.end method


# virtual methods
.method protected calculateAspectRatio()V
    .locals 14

    .prologue
    .line 799
    sget-object v7, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v10, "calculateAspectRatio"

    invoke-static {v7, v10}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget v7, p0, Lnet/pubnative/player/VASTPlayer;->mVideoWidth:I

    if-eqz v7, :cond_0

    iget v7, p0, Lnet/pubnative/player/VASTPlayer;->mVideoHeight:I

    if-nez v7, :cond_1

    .line 803
    :cond_0
    sget-object v7, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v10, "calculateAspectRatio - video source width or height is 0, skipping..."

    invoke-static {v7, v10}, Lnet/pubnative/player/util/VASTLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    :goto_0
    return-void

    .line 807
    :cond_1
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->getWidth()I

    move-result v7

    int-to-double v12, v7

    mul-double/2addr v10, v12

    iget v7, p0, Lnet/pubnative/player/VASTPlayer;->mVideoWidth:I

    int-to-double v12, v7

    div-double v8, v10, v12

    .line 808
    .local v8, "widthRatio":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->getHeight()I

    move-result v7

    int-to-double v12, v7

    mul-double/2addr v10, v12

    iget v7, p0, Lnet/pubnative/player/VASTPlayer;->mVideoHeight:I

    int-to-double v12, v7

    div-double v0, v10, v12

    .line 810
    .local v0, "heightRatio":D
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 812
    .local v4, "scale":D
    iget v7, p0, Lnet/pubnative/player/VASTPlayer;->mVideoWidth:I

    int-to-double v10, v7

    mul-double/2addr v10, v4

    double-to-int v6, v10

    .line 813
    .local v6, "surfaceWidth":I
    iget v7, p0, Lnet/pubnative/player/VASTPlayer;->mVideoHeight:I

    int-to-double v10, v7

    mul-double/2addr v10, v4

    double-to-int v3, v10

    .line 815
    .local v3, "surfaceHeight":I
    sget-object v7, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " view size:     "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lnet/pubnative/player/util/VASTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    sget-object v7, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " video size:    "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lnet/pubnative/player/VASTPlayer;->mVideoWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lnet/pubnative/player/VASTPlayer;->mVideoHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lnet/pubnative/player/util/VASTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    sget-object v7, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " surface size:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lnet/pubnative/player/util/VASTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 820
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xd

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 821
    iget-object v7, p0, Lnet/pubnative/player/VASTPlayer;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v7, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 822
    iget-object v7, p0, Lnet/pubnative/player/VASTPlayer;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v7

    invoke-interface {v7, v6, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 824
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->updateLayout()V

    .line 826
    iget v7, p0, Lnet/pubnative/player/VASTPlayer;->mVideoWidth:I

    int-to-double v10, v7

    iget v7, p0, Lnet/pubnative/player/VASTPlayer;->mVideoHeight:I

    int-to-double v12, v7

    div-double/2addr v10, v12

    invoke-virtual {p0, v10, v11}, Lnet/pubnative/player/VASTPlayer;->setAspectRatio(D)V

    goto/16 :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 558
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "clear"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    sget-object v0, Lnet/pubnative/player/VASTPlayer$PlayerState;->Empty:Lnet/pubnative/player/VASTPlayer$PlayerState;

    invoke-direct {p0, v0}, Lnet/pubnative/player/VASTPlayer;->setState(Lnet/pubnative/player/VASTPlayer$PlayerState;)V

    .line 560
    return-void
.end method

.method public load(Lnet/pubnative/player/model/VASTModel;)V
    .locals 2
    .param p1, "model"    # Lnet/pubnative/player/model/VASTModel;

    .prologue
    .line 488
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "load"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    sget-object v0, Lnet/pubnative/player/VASTPlayer$PlayerState;->Empty:Lnet/pubnative/player/VASTPlayer$PlayerState;

    invoke-direct {p0, v0}, Lnet/pubnative/player/VASTPlayer;->setState(Lnet/pubnative/player/VASTPlayer$PlayerState;)V

    .line 492
    iput-object p1, p0, Lnet/pubnative/player/VASTPlayer;->mVastModel:Lnet/pubnative/player/model/VASTModel;

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/pubnative/player/VASTPlayer;->mIsDataSourceSet:Z

    .line 494
    sget-object v0, Lnet/pubnative/player/VASTPlayer$PlayerState;->Loading:Lnet/pubnative/player/VASTPlayer$PlayerState;

    invoke-direct {p0, v0}, Lnet/pubnative/player/VASTPlayer;->setState(Lnet/pubnative/player/VASTPlayer$PlayerState;)V

    .line 495
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1302
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onClick -- (View.OnClickListener callback)"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mOpen:Landroid/view/View;

    if-ne v0, p1, :cond_1

    .line 1306
    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->onOpenClick()V

    .line 1317
    :cond_0
    :goto_0
    return-void

    .line 1308
    :cond_1
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mSkip:Landroid/widget/TextView;

    if-ne v0, p1, :cond_2

    .line 1310
    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->onSkipClick()V

    goto :goto_0

    .line 1312
    :cond_2
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMute:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_0

    .line 1314
    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->onMuteClick()V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1221
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onCompletion -- (MediaPlayer callback)"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    iget v0, p0, Lnet/pubnative/player/VASTPlayer;->mQuartile:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 1225
    sget-object v0, Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;->complete:Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;

    invoke-direct {p0, v0}, Lnet/pubnative/player/VASTPlayer;->processEvent(Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;)V

    .line 1226
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->invokeOnPlayerPlaybackFinish()V

    .line 1229
    :cond_0
    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->stop()V

    .line 1230
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1237
    sget-object v1, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v2, "onError -- (MediaPlayer callback)"

    invoke-static {v1, v2}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->processErrorEvent()V

    .line 1242
    packed-switch p2, :pswitch_data_0

    .line 1250
    const-string v0, "unknown: "

    .line 1253
    .local v0, "exceptionMessage":Ljava/lang/String;
    :goto_0
    sparse-switch p3, :sswitch_data_0

    .line 1268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "low-level system error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1271
    :goto_1
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VASTPlayer error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lnet/pubnative/player/VASTPlayer;->invokeOnFail(Ljava/lang/Exception;)V

    .line 1272
    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->destroy()V

    .line 1274
    const/4 v1, 0x1

    return v1

    .line 1245
    .end local v0    # "exceptionMessage":Ljava/lang/String;
    :pswitch_0
    const-string v0, "server died: "

    .line 1246
    .restart local v0    # "exceptionMessage":Ljava/lang/String;
    goto :goto_0

    .line 1256
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_IO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1257
    goto :goto_1

    .line 1259
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_MALFORMED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1260
    goto :goto_1

    .line 1262
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_UNSUPPORTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1263
    goto :goto_1

    .line 1265
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_TIMED_OUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1266
    goto :goto_1

    .line 1242
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch

    .line 1253
    :sswitch_data_0
    .sparse-switch
        -0x3f2 -> :sswitch_2
        -0x3ef -> :sswitch_1
        -0x3ec -> :sswitch_0
        -0x6e -> :sswitch_3
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 194
    iget-wide v8, p0, Lnet/pubnative/player/VASTPlayer;->mTargetAspect:D

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    .line 195
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 196
    .local v4, "initialWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 199
    .local v3, "initialHeight":I
    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->getPaddingRight()I

    move-result v9

    add-int v2, v8, v9

    .line 200
    .local v2, "horizPadding":I
    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->getPaddingBottom()I

    move-result v9

    add-int v5, v8, v9

    .line 201
    .local v5, "vertPadding":I
    sub-int/2addr v4, v2

    .line 202
    sub-int/2addr v3, v5

    .line 204
    int-to-double v8, v4

    int-to-double v10, v3

    div-double v6, v8, v10

    .line 205
    .local v6, "viewAspectRatio":D
    iget-wide v8, p0, Lnet/pubnative/player/VASTPlayer;->mTargetAspect:D

    div-double/2addr v8, v6

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v0, v8, v10

    .line 207
    .local v0, "aspectDiff":D
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    .line 211
    sget-object v8, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "aspect ratio is good (target="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lnet/pubnative/player/VASTPlayer;->mTargetAspect:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", view="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v0    # "aspectDiff":D
    .end local v2    # "horizPadding":I
    .end local v3    # "initialHeight":I
    .end local v4    # "initialWidth":I
    .end local v5    # "vertPadding":I
    .end local v6    # "viewAspectRatio":D
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 231
    return-void

    .line 214
    .restart local v0    # "aspectDiff":D
    .restart local v2    # "horizPadding":I
    .restart local v3    # "initialHeight":I
    .restart local v4    # "initialWidth":I
    .restart local v5    # "vertPadding":I
    .restart local v6    # "viewAspectRatio":D
    :cond_1
    const-wide/16 v8, 0x0

    cmpl-double v8, v0, v8

    if-lez v8, :cond_2

    .line 216
    int-to-double v8, v4

    iget-wide v10, p0, Lnet/pubnative/player/VASTPlayer;->mTargetAspect:D

    div-double/2addr v8, v10

    double-to-int v3, v8

    .line 221
    :goto_1
    sget-object v8, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "new size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " + padding "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    add-int/2addr v4, v2

    .line 224
    add-int/2addr v3, v5

    .line 225
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 226
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 219
    :cond_2
    int-to-double v8, v3

    iget-wide v10, p0, Lnet/pubnative/player/VASTPlayer;->mTargetAspect:D

    mul-double/2addr v8, v10

    double-to-int v4, v8

    goto :goto_1
.end method

.method public onMuteClick()V
    .locals 2

    .prologue
    .line 571
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onMuteClick"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 574
    iget-boolean v0, p0, Lnet/pubnative/player/VASTPlayer;->mIsVideoMute:Z

    if-eqz v0, :cond_1

    sget-object v0, Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;->unmute:Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;

    :goto_0
    invoke-direct {p0, v0}, Lnet/pubnative/player/VASTPlayer;->processEvent(Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;)V

    .line 575
    iget-boolean v0, p0, Lnet/pubnative/player/VASTPlayer;->mIsVideoMute:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lnet/pubnative/player/VASTPlayer;->mIsVideoMute:Z

    .line 576
    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->refreshVolume()V

    .line 578
    :cond_0
    return-void

    .line 574
    :cond_1
    sget-object v0, Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;->mute:Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;

    goto :goto_0

    .line 575
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onOpenClick()V
    .locals 2

    .prologue
    .line 589
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onOpenClick"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mVastModel:Lnet/pubnative/player/model/VASTModel;

    invoke-virtual {p0, v0}, Lnet/pubnative/player/VASTPlayer;->load(Lnet/pubnative/player/model/VASTModel;)V

    .line 591
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->openOffer()V

    .line 592
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1282
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onPrepared --(MediaPlayer callback) ....about to play"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    sget-object v0, Lnet/pubnative/player/VASTPlayer$PlayerState;->Ready:Lnet/pubnative/player/VASTPlayer$PlayerState;

    invoke-direct {p0, v0}, Lnet/pubnative/player/VASTPlayer;->setState(Lnet/pubnative/player/VASTPlayer$PlayerState;)V

    .line 1284
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->invokeOnPlayerLoadFinish()V

    .line 1285
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1322
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onSizeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 1324
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lnet/pubnative/player/VASTPlayer$5;

    invoke-direct {v1, p0}, Lnet/pubnative/player/VASTPlayer$5;-><init>(Lnet/pubnative/player/VASTPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1331
    return-void
.end method

.method public onSkipClick()V
    .locals 2

    .prologue
    .line 582
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onSkipClick"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    sget-object v0, Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;->close:Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;

    invoke-direct {p0, v0}, Lnet/pubnative/player/VASTPlayer;->processEvent(Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;)V

    .line 584
    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->stop()V

    .line 585
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1292
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSizeChanged -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    iput p2, p0, Lnet/pubnative/player/VASTPlayer;->mVideoWidth:I

    .line 1295
    iput p3, p0, Lnet/pubnative/player/VASTPlayer;->mVideoHeight:I

    .line 1296
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 539
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    sget-object v0, Lnet/pubnative/player/VASTPlayer$PlayerState;->Pause:Lnet/pubnative/player/VASTPlayer$PlayerState;

    invoke-direct {p0, v0}, Lnet/pubnative/player/VASTPlayer;->canSetState(Lnet/pubnative/player/VASTPlayer$PlayerState;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/pubnative/player/VASTPlayer;->mIsDataSourceSet:Z

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 545
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 547
    :cond_0
    sget-object v0, Lnet/pubnative/player/VASTPlayer$PlayerState;->Pause:Lnet/pubnative/player/VASTPlayer$PlayerState;

    invoke-direct {p0, v0}, Lnet/pubnative/player/VASTPlayer;->setState(Lnet/pubnative/player/VASTPlayer$PlayerState;)V

    .line 551
    :goto_0
    return-void

    .line 549
    :cond_1
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR, player in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer;->mPlayerState:Lnet/pubnative/player/VASTPlayer$PlayerState;

    invoke-virtual {v2}, Lnet/pubnative/player/VASTPlayer$PlayerState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public play()V
    .locals 3

    .prologue
    .line 502
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "play"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    sget-object v0, Lnet/pubnative/player/VASTPlayer$PlayerState;->Playing:Lnet/pubnative/player/VASTPlayer$PlayerState;

    invoke-direct {p0, v0}, Lnet/pubnative/player/VASTPlayer;->canSetState(Lnet/pubnative/player/VASTPlayer$PlayerState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    sget-object v0, Lnet/pubnative/player/VASTPlayer$PlayerState;->Playing:Lnet/pubnative/player/VASTPlayer$PlayerState;

    invoke-direct {p0, v0}, Lnet/pubnative/player/VASTPlayer;->setState(Lnet/pubnative/player/VASTPlayer$PlayerState;)V

    .line 511
    :goto_0
    return-void

    .line 506
    :cond_0
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mPlayerState:Lnet/pubnative/player/VASTPlayer$PlayerState;

    sget-object v1, Lnet/pubnative/player/VASTPlayer$PlayerState;->Empty:Lnet/pubnative/player/VASTPlayer$PlayerState;

    if-ne v0, v1, :cond_1

    .line 507
    sget-object v0, Lnet/pubnative/player/VASTPlayer$PlayerState;->Ready:Lnet/pubnative/player/VASTPlayer$PlayerState;

    invoke-direct {p0, v0}, Lnet/pubnative/player/VASTPlayer;->setState(Lnet/pubnative/player/VASTPlayer$PlayerState;)V

    goto :goto_0

    .line 509
    :cond_1
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR, player in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer;->mPlayerState:Lnet/pubnative/player/VASTPlayer$PlayerState;

    invoke-virtual {v2}, Lnet/pubnative/player/VASTPlayer$PlayerState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public refreshVolume()V
    .locals 2

    .prologue
    .line 780
    iget-boolean v0, p0, Lnet/pubnative/player/VASTPlayer;->mIsVideoMute:Z

    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->turnVolumeOff()V

    .line 782
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMute:Landroid/widget/ImageView;

    sget v1, Lnet/pubnative/player/R$drawable;->pubnative_btn_unmute:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 787
    :goto_0
    return-void

    .line 784
    :cond_0
    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->turnVolumeOn()V

    .line 785
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMute:Landroid/widget/ImageView;

    sget v1, Lnet/pubnative/player/R$drawable;->pubnative_btn_mute:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setAspectRatio(D)V
    .locals 5
    .param p1, "aspectRatio"    # D

    .prologue
    .line 179
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 182
    :cond_0
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting aspect ratio to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lnet/pubnative/player/VASTPlayer;->mTargetAspect:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-wide v0, p0, Lnet/pubnative/player/VASTPlayer;->mTargetAspect:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_1

    .line 184
    iput-wide p1, p0, Lnet/pubnative/player/VASTPlayer;->mTargetAspect:D

    .line 185
    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer;->requestLayout()V

    .line 187
    :cond_1
    return-void
.end method

.method public setCampaignType(Lnet/pubnative/player/VASTPlayer$CampaignType;)V
    .locals 2
    .param p1, "campaignType"    # Lnet/pubnative/player/VASTPlayer$CampaignType;

    .prologue
    .line 428
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setCampaignType"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iput-object p1, p0, Lnet/pubnative/player/VASTPlayer;->mCampaignType:Lnet/pubnative/player/VASTPlayer$CampaignType;

    .line 430
    return-void
.end method

.method public setListener(Lnet/pubnative/player/VASTPlayer$Listener;)V
    .locals 2
    .param p1, "listener"    # Lnet/pubnative/player/VASTPlayer$Listener;

    .prologue
    .line 417
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setListener"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iput-object p1, p0, Lnet/pubnative/player/VASTPlayer;->mListener:Lnet/pubnative/player/VASTPlayer$Listener;

    .line 419
    return-void
.end method

.method public setSkip(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "delay"    # I

    .prologue
    .line 442
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "Skip name set to empty value, this will disable the button"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    :goto_0
    iput-object p1, p0, Lnet/pubnative/player/VASTPlayer;->mSkipName:Ljava/lang/String;

    .line 449
    iput p2, p0, Lnet/pubnative/player/VASTPlayer;->mSkipDelay:I

    .line 450
    return-void

    .line 444
    :cond_1
    if-gez p2, :cond_0

    .line 445
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "Skip time set to negative value, this will disable the button"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSkipName(Ljava/lang/String;)V
    .locals 0
    .param p1, "skipName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 462
    return-void
.end method

.method public setSkipTime(I)V
    .locals 0
    .param p1, "skipTime"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 474
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 518
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    sget-object v0, Lnet/pubnative/player/VASTPlayer$PlayerState;->Loading:Lnet/pubnative/player/VASTPlayer$PlayerState;

    invoke-direct {p0, v0}, Lnet/pubnative/player/VASTPlayer;->canSetState(Lnet/pubnative/player/VASTPlayer$PlayerState;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/pubnative/player/VASTPlayer;->mIsDataSourceSet:Z

    if-eqz v0, :cond_1

    .line 522
    invoke-direct {p0}, Lnet/pubnative/player/VASTPlayer;->stopTimers()V

    .line 523
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 525
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/pubnative/player/VASTPlayer;->mIsDataSourceSet:Z

    .line 528
    :cond_0
    sget-object v0, Lnet/pubnative/player/VASTPlayer$PlayerState;->Loading:Lnet/pubnative/player/VASTPlayer$PlayerState;

    invoke-direct {p0, v0}, Lnet/pubnative/player/VASTPlayer;->setState(Lnet/pubnative/player/VASTPlayer$PlayerState;)V

    .line 532
    :goto_0
    return-void

    .line 530
    :cond_1
    sget-object v0, Lnet/pubnative/player/VASTPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR, player in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer;->mPlayerState:Lnet/pubnative/player/VASTPlayer$PlayerState;

    invoke-virtual {v2}, Lnet/pubnative/player/VASTPlayer$PlayerState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public turnVolumeOff()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 790
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 791
    return-void
.end method

.method public turnVolumeOn()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 794
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 795
    return-void
.end method
