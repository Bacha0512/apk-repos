.class public Lcom/digits/sdk/android/SpacedEditText;
.super Landroid/widget/EditText;


# instance fields
.field private a:F

.field private b:Landroid/text/SpannableStringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1, p2}, Lcom/digits/sdk/android/SpacedEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 7

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-ge v0, v4, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v1, 0x2

    new-instance v4, Landroid/text/style/ScaleXSpan;

    iget v5, p0, Lcom/digits/sdk/android/SpacedEditText;->a:F

    invoke-direct {v4, v5}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    add-int/lit8 v5, v1, 0x1

    const/16 v6, 0x21

    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    add-int/lit8 v0, v3, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_1
    return-object v2
.end method


# virtual methods
.method a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/digits/sdk/android/SpacedEditText;->b:Landroid/text/SpannableStringBuilder;

    sget-object v0, Lcom/digits/sdk/android/cb$i;->SpacedEditText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/digits/sdk/android/cb$i;->SpacedEditText_spacingProportion:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/digits/sdk/android/SpacedEditText;->a:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public getUnspacedText()Landroid/text/Editable;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/SpacedEditText;->b:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public setSelection(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_0
    add-int/lit8 v0, p1, -0x1

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/digits/sdk/android/SpacedEditText;->b:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1}, Lcom/digits/sdk/android/SpacedEditText;->a(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
