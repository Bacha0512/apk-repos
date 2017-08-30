.class public Lcom/rami_bar/fun_call/activities/ActivityPlaySound;
.super Landroid/app/Activity;
.source "ActivityPlaySound.java"


# instance fields
.field private UpdateSongTime:Ljava/lang/Runnable;

.field private ib_play_sound:Landroid/widget/ImageButton;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private myHandler:Landroid/os/Handler;

.field private pb_play_sound:Landroid/widget/ProgressBar;

.field private sb_play_sound:Landroid/widget/SeekBar;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->pb_play_sound:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->ib_play_sound:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->sb_play_sound:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->myHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityPlaySound;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->myHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$500(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->UpdateSongTime:Ljava/lang/Runnable;

    return-object v0
.end method

.method private getViewsIDs()V
    .locals 1

    .prologue
    .line 139
    const v0, 0x7f100154

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->ib_play_sound:Landroid/widget/ImageButton;

    .line 140
    const v0, 0x7f100156

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->sb_play_sound:Landroid/widget/SeekBar;

    .line 141
    const v0, 0x7f100155

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->pb_play_sound:Landroid/widget/ProgressBar;

    .line 142
    return-void
.end method

.method private handleClicks()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->sb_play_sound:Landroid/widget/SeekBar;

    new-instance v1, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$1;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$1;-><init>(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 129
    return-void
.end method

.method private handleMediaPlayer()V
    .locals 4

    .prologue
    .line 145
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 147
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;

    invoke-direct {v2, p0}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$2;-><init>(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 168
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$3;

    invoke-direct {v2, p0}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$3;-><init>(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 175
    new-instance v1, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$4;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$4;-><init>(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)V

    iput-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->UpdateSongTime:Ljava/lang/Runnable;

    .line 187
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 188
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 195
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setDataToViews()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->pb_play_sound:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/rami_bar/fun_call/utiles/Functions;->setFilterColor(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 136
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f040037

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->url:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->finish()V

    .line 52
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->getViewsIDs()V

    .line 47
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->setDataToViews()V

    .line 49
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->handleClicks()V

    .line 51
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->handleMediaPlayer()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 88
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 90
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 93
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 70
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 73
    :cond_0
    return-void
.end method

.method public onPlayPause(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 101
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->ib_play_sound:Landroid/widget/ImageButton;

    const v1, 0x7f02014f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 102
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Pause"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "click"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 108
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 105
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->ib_play_sound:Landroid/widget/ImageButton;

    const v1, 0x7f02014d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 106
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Play"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "click"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 79
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 82
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 57
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 58
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 63
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 64
    return-void
.end method
