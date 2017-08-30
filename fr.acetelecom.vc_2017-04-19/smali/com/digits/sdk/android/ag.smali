.class abstract Lcom/digits/sdk/android/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/digits/sdk/android/af;


# instance fields
.field o:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/widget/TextView;Z)V
    .locals 3

    if-eqz p2, :cond_0

    sget v0, Lcom/digits/sdk/android/cb$e;->dgts__callMeButton:I

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    sget v0, Lcom/digits/sdk/android/cb$e;->dgts__resendConfirmationButton:I

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/digits/sdk/android/internal/StateButton;)Lcom/digits/sdk/android/j$a;
    .locals 1

    new-instance v0, Lcom/digits/sdk/android/ag$5;

    invoke-direct {v0, p0, p1}, Lcom/digits/sdk/android/ag$5;-><init>(Lcom/digits/sdk/android/ag;Lcom/digits/sdk/android/internal/StateButton;)V

    return-object v0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(IILandroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Landroid/widget/EditText;)V
    .locals 1

    new-instance v0, Lcom/digits/sdk/android/ag$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/digits/sdk/android/ag$3;-><init>(Lcom/digits/sdk/android/ag;Lcom/digits/sdk/android/an;Landroid/app/Activity;)V

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-interface {p2}, Lcom/digits/sdk/android/an;->c()Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Landroid/widget/TextView;)V
    .locals 1

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v0, Lcom/digits/sdk/android/ag$4;

    invoke-direct {v0, p0, p2}, Lcom/digits/sdk/android/ag$4;-><init>(Lcom/digits/sdk/android/ag;Lcom/digits/sdk/android/an;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/digits/sdk/android/an;Lcom/digits/sdk/android/internal/StateButton;)V
    .locals 1

    new-instance v0, Lcom/digits/sdk/android/ag$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/digits/sdk/android/ag$1;-><init>(Lcom/digits/sdk/android/ag;Lcom/digits/sdk/android/an;Landroid/app/Activity;)V

    invoke-virtual {p3, v0}, Lcom/digits/sdk/android/internal/StateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected a(Landroid/app/Activity;Lcom/digits/sdk/android/internal/LinkTextView;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p2, p3}, Lcom/digits/sdk/android/internal/LinkTextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/digits/sdk/android/ag$2;

    invoke-direct {v0, p0, p1}, Lcom/digits/sdk/android/ag$2;-><init>(Lcom/digits/sdk/android/ag;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Lcom/digits/sdk/android/internal/LinkTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method a(Lcom/digits/sdk/android/an;Landroid/widget/TextView;Lcom/digits/sdk/android/models/AuthConfigResponse;)V
    .locals 1

    iget-boolean v0, p3, Lcom/digits/sdk/android/models/AuthConfigResponse;->b:Z

    invoke-direct {p0, p2, v0}, Lcom/digits/sdk/android/ag;->a(Landroid/widget/TextView;Z)V

    invoke-interface {p1}, Lcom/digits/sdk/android/an;->f()V

    return-void
.end method
