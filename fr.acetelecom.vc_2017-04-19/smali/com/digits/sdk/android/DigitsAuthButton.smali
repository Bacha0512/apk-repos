.class public Lcom/digits/sdk/android/DigitsAuthButton;
.super Landroid/widget/Button;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field volatile a:Lcom/digits/sdk/android/h;

.field private b:Landroid/view/View$OnClickListener;

.field private c:Lcom/digits/sdk/android/i$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Lcom/digits/sdk/android/DigitsAuthButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/digits/sdk/android/DigitsAuthButton;->a()V

    new-instance v0, Lcom/digits/sdk/android/i$a;

    invoke-direct {v0}, Lcom/digits/sdk/android/i$a;-><init>()V

    iput-object v0, p0, Lcom/digits/sdk/android/DigitsAuthButton;->c:Lcom/digits/sdk/android/i$a;

    invoke-super {p0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/digits/sdk/android/DigitsAuthButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/digits/sdk/android/cb$c;->tw__login_btn_drawable_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/digits/sdk/android/DigitsAuthButton;->setCompoundDrawablePadding(I)V

    sget v1, Lcom/digits/sdk/android/cb$g;->dgts__login_digits_text:I

    invoke-virtual {p0, v1}, Lcom/digits/sdk/android/DigitsAuthButton;->setText(I)V

    sget v1, Lcom/digits/sdk/android/cb$b;->tw__solid_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/digits/sdk/android/DigitsAuthButton;->setTextColor(I)V

    sget v1, Lcom/digits/sdk/android/cb$c;->tw__login_btn_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/digits/sdk/android/DigitsAuthButton;->setTextSize(IF)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1}, Lcom/digits/sdk/android/DigitsAuthButton;->setTypeface(Landroid/graphics/Typeface;)V

    sget v1, Lcom/digits/sdk/android/cb$c;->tw__login_btn_right_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/digits/sdk/android/cb$c;->tw__login_btn_right_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v1, v3, v0, v3}, Lcom/digits/sdk/android/DigitsAuthButton;->setPadding(IIII)V

    sget v0, Lcom/digits/sdk/android/cb$d;->dgts__digits_btn:I

    invoke-virtual {p0, v0}, Lcom/digits/sdk/android/DigitsAuthButton;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method protected getAuthClient()Lcom/digits/sdk/android/h;
    .locals 2

    iget-object v0, p0, Lcom/digits/sdk/android/DigitsAuthButton;->a:Lcom/digits/sdk/android/h;

    if-nez v0, :cond_1

    const-class v1, Lcom/digits/sdk/android/h;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/digits/sdk/android/DigitsAuthButton;->a:Lcom/digits/sdk/android/h;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/digits/sdk/android/DigitsAuthButton;->getDigits()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->m()Lcom/digits/sdk/android/h;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/android/DigitsAuthButton;->a:Lcom/digits/sdk/android/h;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/digits/sdk/android/DigitsAuthButton;->a:Lcom/digits/sdk/android/h;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected getDigits()Lcom/digits/sdk/android/ac;
    .locals 1

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/digits/sdk/android/DigitsAuthButton;->c:Lcom/digits/sdk/android/i$a;

    invoke-virtual {v0}, Lcom/digits/sdk/android/i$a;->a()Lcom/digits/sdk/android/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/digits/sdk/android/DigitsAuthButton;->getAuthClient()Lcom/digits/sdk/android/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/digits/sdk/android/h;->a(Lcom/digits/sdk/android/i;)V

    iget-object v0, p0, Lcom/digits/sdk/android/DigitsAuthButton;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/DigitsAuthButton;->b:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setAuthTheme(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/digits/sdk/android/DigitsAuthButton;->getDigits()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/digits/sdk/android/ac;->a(I)V

    return-void
.end method

.method public setCallback(Lcom/digits/sdk/android/g;)V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/DigitsAuthButton;->c:Lcom/digits/sdk/android/i$a;

    invoke-virtual {v0, p1}, Lcom/digits/sdk/android/i$a;->a(Lcom/digits/sdk/android/g;)Lcom/digits/sdk/android/i$a;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/digits/sdk/android/DigitsAuthButton;->b:Landroid/view/View$OnClickListener;

    return-void
.end method
