.class public Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;
.super Landroid/widget/Button;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$1;,
        Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field volatile b:Lcom/twitter/sdk/android/core/identity/i;

.field c:Landroid/view/View$OnClickListener;

.field d:Lcom/twitter/sdk/android/core/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/twitter/sdk/android/core/identity/i;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/twitter/sdk/android/core/identity/i;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->a:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->b:Lcom/twitter/sdk/android/core/identity/i;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->a()V

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->b()V

    return-void
.end method

.method private a()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/twitter/sdk/android/core/h$c;->tw__ic_logo_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-super {p0, v1, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    sget v1, Lcom/twitter/sdk/android/core/h$b;->tw__login_btn_drawable_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-super {p0, v1}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    sget v1, Lcom/twitter/sdk/android/core/h$g;->tw__login_btn_txt:I

    invoke-super {p0, v1}, Landroid/widget/Button;->setText(I)V

    sget v1, Lcom/twitter/sdk/android/core/h$a;->tw__solid_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-super {p0, v1}, Landroid/widget/Button;->setTextColor(I)V

    sget v1, Lcom/twitter/sdk/android/core/h$b;->tw__login_btn_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-super {p0, v3, v1}, Landroid/widget/Button;->setTextSize(IF)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-super {p0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    sget v1, Lcom/twitter/sdk/android/core/h$b;->tw__login_btn_left_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/twitter/sdk/android/core/h$b;->tw__login_btn_right_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-super {p0, v1, v3, v0, v3}, Landroid/widget/Button;->setPadding(IIII)V

    sget v0, Lcom/twitter/sdk/android/core/h$c;->tw__login_btn:I

    invoke-super {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    new-instance v0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$a;

    invoke-direct {v0, p0, v4}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$a;-><init>(Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$1;)V

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-super {p0, v3}, Landroid/widget/Button;->setAllCaps(Z)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 3

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->a()Lcom/twitter/sdk/android/core/o;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "Twitter"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, La/a/a/a/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getActivity()Landroid/app/Activity;
    .locals 2

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TwitterLoginButton requires an activity. Override getActivity to provide the activity for this button."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCallback()Lcom/twitter/sdk/android/core/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->d:Lcom/twitter/sdk/android/core/c;

    return-object v0
.end method

.method getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/i;
    .locals 2

    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->b:Lcom/twitter/sdk/android/core/identity/i;

    if-nez v0, :cond_1

    const-class v1, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->b:Lcom/twitter/sdk/android/core/identity/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/twitter/sdk/android/core/identity/i;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/identity/i;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->b:Lcom/twitter/sdk/android/core/identity/i;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->b:Lcom/twitter/sdk/android/core/identity/i;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setCallback(Lcom/twitter/sdk/android/core/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->d:Lcom/twitter/sdk/android/core/c;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->c:Landroid/view/View$OnClickListener;

    return-void
.end method
