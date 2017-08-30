.class Lcom/digits/sdk/android/bj;
.super Lcom/digits/sdk/android/ap;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digits/sdk/android/bj$a;
    }
.end annotation


# instance fields
.field final b:Landroid/content/Context;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field final f:Lcom/digits/sdk/android/internal/d;

.field final g:Lcom/digits/sdk/android/bk;

.field final h:I

.field final i:I

.field final j:Lcom/digits/sdk/android/ar;

.field final k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/digits/sdk/android/al;ILjava/lang/String;Lcom/digits/sdk/android/internal/d;Lcom/digits/sdk/android/bk;Lcom/digits/sdk/android/ar;Z)V
    .locals 7

    const/4 v6, -0x1

    const/high16 v1, -0x1000000

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    const-wide v2, 0x3fe6666666666666L    # 0.7

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/digits/sdk/android/ap;-><init>(Landroid/content/Context;Lcom/digits/sdk/android/al;I)V

    iput-boolean p8, p0, Lcom/digits/sdk/android/bj;->k:Z

    iput-object p1, p0, Lcom/digits/sdk/android/bj;->b:Landroid/content/Context;

    iput-object p6, p0, Lcom/digits/sdk/android/bj;->g:Lcom/digits/sdk/android/bk;

    iput-object p7, p0, Lcom/digits/sdk/android/bj;->j:Lcom/digits/sdk/android/ar;

    invoke-static {p3}, Lcom/digits/sdk/android/internal/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2, v3, v6, p3}, Lcom/digits/sdk/android/internal/f;->a(DII)I

    move-result v0

    iput v0, p0, Lcom/digits/sdk/android/bj;->h:I

    invoke-static {v4, v5, v1, p3}, Lcom/digits/sdk/android/internal/f;->a(DII)I

    move-result v0

    iput v0, p0, Lcom/digits/sdk/android/bj;->i:I

    :goto_0
    iput-object p4, p0, Lcom/digits/sdk/android/bj;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/digits/sdk/android/bj;->f:Lcom/digits/sdk/android/internal/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/digits/sdk/android/cb$g;->dgts__invite_pre:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/android/bj;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/digits/sdk/android/cb$g;->dgts__invite_post:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/android/bj;->e:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {v2, v3, v1, p3}, Lcom/digits/sdk/android/internal/f;->a(DII)I

    move-result v0

    iput v0, p0, Lcom/digits/sdk/android/bj;->h:I

    invoke-static {v4, v5, v6, p3}, Lcom/digits/sdk/android/internal/f;->a(DII)I

    move-result v0

    iput v0, p0, Lcom/digits/sdk/android/bj;->i:I

    goto :goto_0
.end method

.method private b(Lcom/digits/sdk/android/al;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/digits/sdk/android/al;->b()Lcom/digits/sdk/android/models/Invite$Status;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/digits/sdk/android/al;->b()Lcom/digits/sdk/android/models/Invite$Status;

    move-result-object v1

    sget-object v2, Lcom/digits/sdk/android/models/Invite$Status;->PENDING:Lcom/digits/sdk/android/models/Invite$Status;

    invoke-virtual {v1, v2}, Lcom/digits/sdk/android/models/Invite$Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/digits/sdk/android/al;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v4, -0x1

    invoke-virtual {p2}, Lcom/digits/sdk/android/al;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/digits/sdk/android/bj;->getItemViewType(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/digits/sdk/android/cb$f;->dgts__invite_row:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    sget v1, Lcom/digits/sdk/android/cb$g;->dgts__invite_to_appname:I

    iget-object v2, p0, Lcom/digits/sdk/android/bj;->c:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/digits/sdk/android/bj;->a(ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v2, Lcom/digits/sdk/android/bj$a;

    invoke-direct {v2}, Lcom/digits/sdk/android/bj$a;-><init>()V

    sget v1, Lcom/digits/sdk/android/cb$e;->dgts__invite_display_name:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/digits/sdk/android/bj$a;->a:Landroid/widget/TextView;

    sget v1, Lcom/digits/sdk/android/cb$e;->dgts__invite_phone_number:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/digits/sdk/android/bj$a;->b:Landroid/widget/TextView;

    sget v1, Lcom/digits/sdk/android/cb$e;->dgts__action:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/digits/sdk/android/internal/StateButton;

    iput-object v1, v2, Lcom/digits/sdk/android/bj$a;->c:Lcom/digits/sdk/android/internal/StateButton;

    iget-object v1, v2, Lcom/digits/sdk/android/bj$a;->c:Lcom/digits/sdk/android/internal/StateButton;

    invoke-virtual {v1, v2}, Lcom/digits/sdk/android/internal/StateButton;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/digits/sdk/android/bj$a;->c:Lcom/digits/sdk/android/internal/StateButton;

    iget-object v3, p0, Lcom/digits/sdk/android/bj;->d:Ljava/lang/String;

    const-string v4, ""

    iget-object v5, p0, Lcom/digits/sdk/android/bj;->e:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Lcom/digits/sdk/android/internal/StateButton;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v2, Lcom/digits/sdk/android/bj$a;->c:Lcom/digits/sdk/android/internal/StateButton;

    invoke-virtual {v1, p0}, Lcom/digits/sdk/android/internal/StateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method a(ILjava/lang/String;)Landroid/widget/TextView;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    iget-object v0, p0, Lcom/digits/sdk/android/bj;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/digits/sdk/android/bj;->b:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v2, Lcom/digits/sdk/android/cb$f;->dgts__invite_row_separator:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v2, p0, Lcom/digits/sdk/android/bj;->h:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget v2, p0, Lcom/digits/sdk/android/bj;->i:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method a(Landroid/content/Context;Lcom/digits/sdk/android/bi$a;)Lcom/digits/sdk/android/bi;
    .locals 1

    new-instance v0, Lcom/digits/sdk/android/bi;

    invoke-direct {v0, p1, p2}, Lcom/digits/sdk/android/bi;-><init>(Landroid/content/Context;Lcom/digits/sdk/android/bi$a;)V

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/content/Context;Lcom/digits/sdk/android/al;)V
    .locals 6

    const/16 v3, 0x80

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/bj$a;

    new-instance v1, Landroid/database/CharArrayBuffer;

    invoke-direct {v1, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    new-instance v2, Landroid/database/CharArrayBuffer;

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    sget-object v3, Lcom/digits/sdk/android/al;->b:Ljava/lang/String;

    invoke-virtual {p3, v3}, Lcom/digits/sdk/android/al;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3, v3, v1}, Lcom/digits/sdk/android/al;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    sget-object v3, Lcom/digits/sdk/android/al;->a:Ljava/lang/String;

    invoke-virtual {p3, v3}, Lcom/digits/sdk/android/al;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3, v3, v2}, Lcom/digits/sdk/android/al;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    const-string v3, "contact_id"

    invoke-virtual {p3, v3}, Lcom/digits/sdk/android/al;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iget-object v4, v0, Lcom/digits/sdk/android/bj$a;->d:Landroid/database/CharArrayBuffer;

    invoke-virtual {p3, v3, v4}, Lcom/digits/sdk/android/al;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    iget-object v3, v0, Lcom/digits/sdk/android/bj$a;->a:Landroid/widget/TextView;

    iget-object v4, v1, Landroid/database/CharArrayBuffer;->data:[C

    iget v1, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v3, v4, v5, v1}, Landroid/widget/TextView;->setText([CII)V

    iget-object v1, v0, Lcom/digits/sdk/android/bj$a;->b:Landroid/widget/TextView;

    iget-object v3, v2, Landroid/database/CharArrayBuffer;->data:[C

    iget v2, v2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v1, v3, v5, v2}, Landroid/widget/TextView;->setText([CII)V

    invoke-direct {p0, p3}, Lcom/digits/sdk/android/bj;->b(Lcom/digits/sdk/android/al;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/digits/sdk/android/bj$a;->c:Lcom/digits/sdk/android/internal/StateButton;

    invoke-virtual {v0}, Lcom/digits/sdk/android/internal/StateButton;->e()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, v0, Lcom/digits/sdk/android/bj$a;->c:Lcom/digits/sdk/android/internal/StateButton;

    invoke-virtual {v0}, Lcom/digits/sdk/android/internal/StateButton;->g()V

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatInvalid"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/digits/sdk/android/cb$e;->dgts__action:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/bj;->j:Lcom/digits/sdk/android/ar;

    new-instance v1, Lcom/digits/sdk/android/a/j;

    iget-boolean v2, p0, Lcom/digits/sdk/android/bj;->k:Z

    invoke-direct {v1, v2}, Lcom/digits/sdk/android/a/j;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/ar;->a(Lcom/digits/sdk/android/a/j;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/bj$a;

    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/digits/sdk/android/bj$a;->d:Landroid/database/CharArrayBuffer;

    iget-object v2, v2, Landroid/database/CharArrayBuffer;->data:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    iget-object v2, v0, Lcom/digits/sdk/android/bj$a;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/digits/sdk/android/bj$a;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/digits/sdk/android/bj$a;->c:Lcom/digits/sdk/android/internal/StateButton;

    invoke-virtual {v0}, Lcom/digits/sdk/android/internal/StateButton;->e()V

    new-instance v0, Lcom/digits/sdk/android/bj$1;

    invoke-direct {v0, p0, v2, v3}, Lcom/digits/sdk/android/bj$1;-><init>(Lcom/digits/sdk/android/bj;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/digits/sdk/android/bj;->b:Landroid/content/Context;

    invoke-virtual {p0, v4, v0}, Lcom/digits/sdk/android/bj;->a(Landroid/content/Context;Lcom/digits/sdk/android/bi$a;)Lcom/digits/sdk/android/bi;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v4}, Lcom/digits/sdk/android/bi;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/digits/sdk/android/bj;->g:Lcom/digits/sdk/android/bk;

    invoke-interface {v0, v1, v2, v3}, Lcom/digits/sdk/android/bk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
