.class public final Lcom/google/android/gms/internal/zzaus;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/google/android/gms/cast/framework/IntroductoryOverlay;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mColor:I

.field private final zzasC:Z

.field private zzasD:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

.field private zzasE:Z

.field private zzasl:Landroid/view/View;

.field private zzasn:Ljava/lang/String;

.field private zzaso:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaus;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zznD()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaus;->zzasC:Z

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zznB()Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzaso:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zznA()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzasl:Landroid/view/View;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zznE()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzasn:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zznC()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzaus;->mColor:I

    return-void
.end method

.method private final reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaus;->removeAllViews()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaus;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzaso:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzasl:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzasD:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzasn:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/zzaus;->mColor:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzaus;->zzasE:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaus;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaus;->zzasE:Z

    return v0
.end method

.method static zzao(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzaus;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzaus;)Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzaso:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzaus;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaus;->reset()V

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzaus;)Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzasD:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    return-object v0
.end method


# virtual methods
.method protected final onDetachedFromWindow()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaus;->reset()V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public final remove()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaus;->zzasE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaus;->reset()V

    :cond_0
    return-void
.end method

.method public final show()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzasl:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaus;->zzasE:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaus;->zzao(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaus;->zzasC:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$zza;->zzam(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaus;->reset()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaus;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzasD:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    iget v0, p0, Lcom/google/android/gms/internal/zzaus;->mColor:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzasD:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    iget v1, p0, Lcom/google/android/gms/internal/zzaus;->mColor:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzaa(I)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzasD:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaus;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/gms/R$layout;->cast_help_text:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaus;->zzasD:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaus;->zzasn:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaus;->zzasD:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zza(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzasD:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaus;->zzasl:Landroid/view/View;

    new-instance v2, Lcom/google/android/gms/internal/zzaut;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzaut;-><init>(Lcom/google/android/gms/internal/zzaus;)V

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zza(Landroid/view/View;Landroid/view/View;ZLcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;)V

    iput-boolean v5, p0, Lcom/google/android/gms/internal/zzaus;->zzasE:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaus;->zzasD:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzg(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
