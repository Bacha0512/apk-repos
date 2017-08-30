.class public Lfr/acetelecom/vc/CallActivity$a;
.super Landroid/support/v4/app/FragmentPagerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/acetelecom/vc/CallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final a:[Ljava/lang/String;

.field final b:[I

.field final synthetic c:Lfr/acetelecom/vc/CallActivity;


# direct methods
.method public constructor <init>(Lfr/acetelecom/vc/CallActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 5

    const/4 v4, 0x3

    iput-object p1, p0, Lfr/acetelecom/vc/CallActivity$a;->c:Lfr/acetelecom/vc/CallActivity;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lfr/acetelecom/vc/CallActivity$a;->c:Lfr/acetelecom/vc/CallActivity;

    const v3, 0x7f070078

    invoke-virtual {v2, v3}, Lfr/acetelecom/vc/CallActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lfr/acetelecom/vc/CallActivity$a;->c:Lfr/acetelecom/vc/CallActivity;

    const v3, 0x7f07007a

    invoke-virtual {v2, v3}, Lfr/acetelecom/vc/CallActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lfr/acetelecom/vc/CallActivity$a;->c:Lfr/acetelecom/vc/CallActivity;

    const v3, 0x7f070086

    invoke-virtual {v2, v3}, Lfr/acetelecom/vc/CallActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lfr/acetelecom/vc/CallActivity$a;->a:[Ljava/lang/String;

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lfr/acetelecom/vc/CallActivity$a;->b:[I

    return-void

    :array_0
    .array-data 4
        0x7f020109
        0x7f020059
        0x7f02005f
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SectionsPagerAdapter getItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, "vc"

    const-string v1, "incall"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/o;->a(Ljava/lang/String;Ljava/lang/String;)Lfr/acetelecom/vc/o;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity$a;->c:Lfr/acetelecom/vc/CallActivity;

    const-string v1, "pc"

    const-string v2, "incall"

    invoke-static {v1, v2}, Lfr/acetelecom/vc/n;->a(Ljava/lang/String;Ljava/lang/String;)Lfr/acetelecom/vc/n;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/CallActivity;->a(Lfr/acetelecom/vc/CallActivity;Lfr/acetelecom/vc/n;)Lfr/acetelecom/vc/n;

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity$a;->c:Lfr/acetelecom/vc/CallActivity;

    invoke-static {v0}, Lfr/acetelecom/vc/CallActivity;->c(Lfr/acetelecom/vc/CallActivity;)Lfr/acetelecom/vc/n;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "br"

    const-string v1, "incall"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/n;->a(Ljava/lang/String;Ljava/lang/String;)Lfr/acetelecom/vc/n;

    move-result-object v0

    goto :goto_0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Landroid/support/v7/widget/h;->a()Landroid/support/v7/widget/h;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/CallActivity$a;->c:Lfr/acetelecom/vc/CallActivity;

    iget-object v2, p0, Lfr/acetelecom/vc/CallActivity$a;->b:[I

    aget v2, v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/h;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lfr/acetelecom/vc/CallActivity$a;->c:Lfr/acetelecom/vc/CallActivity;

    invoke-virtual {v1}, Lfr/acetelecom/vc/CallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/CallActivity$a;->a:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method
