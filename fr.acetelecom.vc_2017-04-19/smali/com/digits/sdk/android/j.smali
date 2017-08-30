.class Lcom/digits/sdk/android/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digits/sdk/android/j$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/EditText;

.field private final b:Lcom/digits/sdk/android/j$a;

.field private final c:[Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/widget/EditText;ILjava/lang/String;Lcom/digits/sdk/android/j$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/digits/sdk/android/j;->a:Landroid/widget/EditText;

    iput p2, p0, Lcom/digits/sdk/android/j;->e:I

    invoke-direct {p0, p3, p2}, Lcom/digits/sdk/android/j;->a(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/android/j;->c:[Ljava/lang/String;

    iput-object p4, p0, Lcom/digits/sdk/android/j;->b:Lcom/digits/sdk/android/j$a;

    iput-object p3, p0, Lcom/digits/sdk/android/j;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/CharSequence;I)[Ljava/lang/String;
    .locals 4

    add-int/lit8 v0, p2, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p2, :cond_0

    const-string v2, ""

    invoke-static {v0, p1}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/digits/sdk/android/j;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    iget v2, p0, Lcom/digits/sdk/android/j;->e:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/digits/sdk/android/j;->a:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/digits/sdk/android/j;->a:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/digits/sdk/android/j;->c:[Ljava/lang/String;

    iget v4, p0, Lcom/digits/sdk/android/j;->e:I

    sub-int/2addr v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/digits/sdk/android/j;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Lcom/digits/sdk/android/j;->a:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget v1, p0, Lcom/digits/sdk/android/j;->e:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/digits/sdk/android/j;->b:Lcom/digits/sdk/android/j$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/digits/sdk/android/j;->b:Lcom/digits/sdk/android/j$a;

    invoke-interface {v0}, Lcom/digits/sdk/android/j$a;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/digits/sdk/android/j;->b:Lcom/digits/sdk/android/j$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/digits/sdk/android/j;->b:Lcom/digits/sdk/android/j$a;

    invoke-interface {v0}, Lcom/digits/sdk/android/j$a;->b()V

    goto :goto_0
.end method
