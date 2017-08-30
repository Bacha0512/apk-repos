.class Lcom/oneaudience/sdk/m$d;
.super Landroid/widget/ImageView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneaudience/sdk/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneaudience/sdk/m$d;-><init>(Landroid/content/Context;Lcom/oneaudience/sdk/m$e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneaudience/sdk/m$e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneaudience/sdk/m$d;-><init>(Landroid/content/Context;Lcom/oneaudience/sdk/m$e;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneaudience/sdk/m$e;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p2}, Lcom/oneaudience/sdk/m$d;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p3}, Lcom/oneaudience/sdk/m$d;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private a(I)I
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    invoke-direct {p0}, Lcom/oneaudience/sdk/m$d;->b()I

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneaudience/sdk/m$d;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneaudience/sdk/m$d;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private b()I
    .locals 3

    const/4 v0, 0x1

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lcom/oneaudience/sdk/m$d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method a()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneaudience/sdk/m$d;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/oneaudience/sdk/m$d;->a(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/oneaudience/sdk/m$d;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oneaudience/sdk/m$d;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/oneaudience/sdk/m$d;->a(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/oneaudience/sdk/m$d;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/oneaudience/sdk/m$d;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, v0}, Lcom/oneaudience/sdk/m$d;->setMeasuredDimension(II)V

    return-void
.end method
