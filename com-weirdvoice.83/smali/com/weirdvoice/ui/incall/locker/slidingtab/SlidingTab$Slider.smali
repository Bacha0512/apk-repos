.class Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;
.super Ljava/lang/Object;
.source "SlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Slider"
.end annotation


# static fields
.field public static final ALIGN_LEFT:I = 0x0

.field public static final ALIGN_RIGHT:I = 0x1

.field private static final STATE_ACTIVE:I = 0x2

.field private static final STATE_NORMAL:I = 0x0

.field private static final STATE_PRESSED:I = 0x1


# instance fields
.field private final tab:Landroid/widget/ImageView;

.field private final target:Landroid/widget/ImageView;

.field private final text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;IIII)V
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "iconId"    # I
    .param p3, "targetId"    # I
    .param p4, "barId"    # I
    .param p5, "tabId"    # I

    .prologue
    const/4 v3, -0x2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 124
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 125
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 127
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 133
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d004f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 138
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    .line 139
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 141
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 147
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 149
    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->hide()V

    return-void
.end method

.method static synthetic access$10(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->setHintText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;I)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->setState(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->showTarget()V

    return-void
.end method

.method static synthetic access$4(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->reset()V

    return-void
.end method

.method static synthetic access$5(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;IIIII)V
    .locals 0

    .prologue
    .line 232
    invoke-direct/range {p0 .. p5}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->layout(IIIII)V

    return-void
.end method

.method static synthetic access$6(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;IIII)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->setResources(IIII)V

    return-void
.end method

.method static synthetic access$8(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$9(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;I)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->setHintText(I)V

    return-void
.end method

.method private hide()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 183
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    return-void
.end method

.method private layout(IIIII)V
    .locals 15
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I
    .param p5, "alignment"    # I

    .prologue
    .line 233
    iget-object v12, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 234
    .local v2, "handleWidth":I
    iget-object v12, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 235
    .local v1, "handleHeight":I
    iget-object v12, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 236
    .local v10, "targetWidth":I
    iget-object v12, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 237
    .local v8, "targetHeight":I
    sub-int v5, p3, p1

    .line 238
    .local v5, "parentWidth":I
    sub-int v4, p4, p2

    .line 240
    .local v4, "parentHeight":I
    const v12, 0x3f2aaaab

    int-to-float v13, v5

    mul-float/2addr v12, v13

    float-to-int v12, v12

    sub-int/2addr v12, v10

    div-int/lit8 v13, v2, 0x2

    add-int v3, v12, v13

    .line 241
    .local v3, "leftTarget":I
    const v12, 0x3eaaaaaa

    int-to-float v13, v5

    mul-float/2addr v12, v13

    float-to-int v12, v12

    div-int/lit8 v13, v2, 0x2

    sub-int v6, v12, v13

    .line 243
    .local v6, "rightTarget":I
    sub-int v12, v4, v8

    div-int/lit8 v9, v12, 0x2

    .line 244
    .local v9, "targetTop":I
    add-int v7, v9, v8

    .line 245
    .local v7, "targetBottom":I
    sub-int v12, v4, v1

    div-int/lit8 v11, v12, 0x2

    .line 246
    .local v11, "top":I
    add-int v12, v4, v1

    div-int/lit8 v0, v12, 0x2

    .line 247
    .local v0, "bottom":I
    if-nez p5, :cond_0

    .line 248
    iget-object v12, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v11, v2, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 249
    iget-object v12, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;

    rsub-int/lit8 v13, v5, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v11, v14, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 250
    iget-object v12, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 251
    iget-object v12, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    add-int v13, v3, v10

    invoke-virtual {v12, v3, v9, v13, v7}, Landroid/widget/ImageView;->layout(IIII)V

    .line 259
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v12, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    sub-int v13, v5, v2

    invoke-virtual {v12, v13, v11, v5, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 254
    iget-object v12, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;

    add-int v13, v5, v5

    invoke-virtual {v12, v5, v11, v13, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 255
    iget-object v12, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    add-int v13, v6, v10

    invoke-virtual {v12, v6, v9, v13, v7}, Landroid/widget/ImageView;->layout(IIII)V

    .line 256
    iget-object v12, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;

    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 210
    invoke-direct {p0, v3}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->setState(I)V

    .line 211
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d004f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 213
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    return-void
.end method

.method private setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "iconD"    # Landroid/graphics/drawable/Drawable;
    .param p2, "targetD"    # Landroid/graphics/drawable/Drawable;
    .param p3, "barD"    # Landroid/graphics/drawable/Drawable;
    .param p4, "tabD"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 159
    if-eqz p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    :cond_0
    if-eqz p4, :cond_1

    .line 163
    invoke-static {}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->getInstance()Lcom/actionbarsherlock/internal/utils/UtilityWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p4}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 165
    :cond_1
    if-eqz p3, :cond_2

    .line 166
    invoke-static {}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->getInstance()Lcom/actionbarsherlock/internal/utils/UtilityWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p3}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 168
    :cond_2
    if-eqz p4, :cond_3

    .line 169
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    :cond_3
    return-void
.end method

.method private setHintText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 176
    return-void
.end method

.method private setHintText(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    return-void
.end method

.method private setResources(IIII)V
    .locals 1
    .param p1, "iconId"    # I
    .param p2, "targetId"    # I
    .param p3, "barId"    # I
    .param p4, "tabId"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 154
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 155
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    return-void
.end method

.method private setState(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 189
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;

    if-ne p1, v2, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 190
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 191
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 192
    new-array v0, v2, [I

    const v1, 0x10100a2

    aput v1, v0, v3

    .line 193
    .local v0, "activeState":[I
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d004d

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 203
    .end local v0    # "activeState":[I
    :goto_2
    return-void

    :cond_2
    move v1, v3

    .line 189
    goto :goto_0

    :cond_3
    move v1, v3

    .line 190
    goto :goto_1

    .line 201
    :cond_4
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d004f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_2
.end method

.method private showTarget()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    return-void
.end method


# virtual methods
.method public getTabHeight()I
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method
