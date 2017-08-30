.class public Lcom/weirdvoice/widgets/Dialpad;
.super Landroid/widget/FrameLayout;
.source "Dialpad.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/widgets/Dialpad$OnDialKeyListener;
    }
.end annotation


# static fields
.field private static final DIGITS_BTNS:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private static final DIGITS_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final THIS_FILE:Ljava/lang/String;


# instance fields
.field private onDialKeyListener:Lcom/weirdvoice/widgets/Dialpad$OnDialKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const v9, 0x7f0b00a7

    const v8, 0x7f0b00a6

    const v7, 0x7f0b00a5

    const v6, 0x7f0b00a4

    const/4 v5, 0x2

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_BTNS:Ljava/util/Map;

    .line 55
    sget-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_BTNS:Ljava/util/Map;

    const v1, 0x7f0b00ae

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [I

    const/4 v3, 0x1

    const/4 v4, 0x7

    aput v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_BTNS:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_BTNS:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [I

    fill-array-data v2, :array_1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_BTNS:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [I

    fill-array-data v2, :array_2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_BTNS:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [I

    fill-array-data v2, :array_3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_BTNS:Ljava/util/Map;

    const v1, 0x7f0b00a8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [I

    fill-array-data v2, :array_4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_BTNS:Ljava/util/Map;

    const v1, 0x7f0b00a9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [I

    fill-array-data v2, :array_5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_BTNS:Ljava/util/Map;

    const v1, 0x7f0b00aa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [I

    fill-array-data v2, :array_6

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_BTNS:Ljava/util/Map;

    const v1, 0x7f0b00ab

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [I

    fill-array-data v2, :array_7

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_BTNS:Ljava/util/Map;

    const v1, 0x7f0b00ac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [I

    fill-array-data v2, :array_8

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_BTNS:Ljava/util/Map;

    const v1, 0x7f0b00af

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [I

    fill-array-data v2, :array_9

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_BTNS:Ljava/util/Map;

    const v1, 0x7f0b00ad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [I

    fill-array-data v2, :array_a

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_NAMES:Landroid/util/SparseArray;

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/weirdvoice/widgets/Dialpad;->THIS_FILE:Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_NAMES:Landroid/util/SparseArray;

    const v1, 0x7f0b00ae

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sget-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_NAMES:Landroid/util/SparseArray;

    const-string v1, "1"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_NAMES:Landroid/util/SparseArray;

    const-string v1, "2"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_NAMES:Landroid/util/SparseArray;

    const-string v1, "3"

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_NAMES:Landroid/util/SparseArray;

    const-string v1, "4"

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    sget-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_NAMES:Landroid/util/SparseArray;

    const v1, 0x7f0b00a8

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_NAMES:Landroid/util/SparseArray;

    const v1, 0x7f0b00a9

    const-string v2, "6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    sget-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_NAMES:Landroid/util/SparseArray;

    const v1, 0x7f0b00aa

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    sget-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_NAMES:Landroid/util/SparseArray;

    const v1, 0x7f0b00ab

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    sget-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_NAMES:Landroid/util/SparseArray;

    const v1, 0x7f0b00ac

    const-string v2, "9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    sget-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_NAMES:Landroid/util/SparseArray;

    const v1, 0x7f0b00af

    const-string v2, "pound"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    sget-object v0, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_NAMES:Landroid/util/SparseArray;

    const v1, 0x7f0b00ad

    const-string v2, "star"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    return-void

    .line 56
    :array_0
    .array-data 4
        0x1
        0x8
    .end array-data

    .line 57
    :array_1
    .array-data 4
        0x2
        0x9
    .end array-data

    .line 58
    :array_2
    .array-data 4
        0x3
        0xa
    .end array-data

    .line 59
    :array_3
    .array-data 4
        0x4
        0xb
    .end array-data

    .line 60
    :array_4
    .array-data 4
        0x5
        0xc
    .end array-data

    .line 61
    :array_5
    .array-data 4
        0x6
        0xd
    .end array-data

    .line 62
    :array_6
    .array-data 4
        0x7
        0xe
    .end array-data

    .line 63
    :array_7
    .array-data 4
        0x8
        0xf
    .end array-data

    .line 64
    :array_8
    .array-data 4
        0x9
        0x10
    .end array-data

    .line 65
    :array_9
    .array-data 4
        0xb
        0x12
    .end array-data

    .line 66
    :array_a
    .array-data 4
        0xa
        0x11
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-direct {p0, p1}, Lcom/weirdvoice/widgets/Dialpad;->initLayout(Landroid/content/Context;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/weirdvoice/widgets/Dialpad;->initLayout(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method private dispatchDialKeyEvent(I)V
    .locals 4
    .param p1, "buttonId"    # I

    .prologue
    .line 142
    iget-object v1, p0, Lcom/weirdvoice/widgets/Dialpad;->onDialKeyListener:Lcom/weirdvoice/widgets/Dialpad$OnDialKeyListener;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_BTNS:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    sget-object v1, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_BTNS:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 144
    .local v0, "datas":[I
    iget-object v1, p0, Lcom/weirdvoice/widgets/Dialpad;->onDialKeyListener:Lcom/weirdvoice/widgets/Dialpad$OnDialKeyListener;

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-interface {v1, v2, v3}, Lcom/weirdvoice/widgets/Dialpad$OnDialKeyListener;->onTrigger(II)V

    .line 146
    .end local v0    # "datas":[I
    :cond_0
    return-void
.end method

.method private initLayout(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 114
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03002f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 115
    return-void
.end method


# virtual methods
.method public applyTheme(Lcom/weirdvoice/utils/Theme;)V
    .locals 6
    .param p1, "t"    # Lcom/weirdvoice/utils/Theme;

    .prologue
    .line 170
    sget-object v3, Lcom/weirdvoice/widgets/Dialpad;->THIS_FILE:Ljava/lang/String;

    const-string v4, "Theming in progress"

    invoke-static {v3, v4}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v3, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_BTNS:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    return-void

    .line 171
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 173
    .local v1, "buttonId":I
    invoke-virtual {p0, v1}, Lcom/weirdvoice/widgets/Dialpad;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 175
    .local v0, "b":Landroid/widget/ImageButton;
    const-string v3, "btn_dial"

    invoke-virtual {p1, v0, v3}, Lcom/weirdvoice/utils/Theme;->applyBackgroundStateListDrawable(Landroid/view/View;Ljava/lang/String;)V

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "dial_num_"

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/weirdvoice/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 179
    .local v2, "src":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 180
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    :cond_1
    const-string v3, "dialpad_btn_margin"

    invoke-virtual {p1, v0, v3}, Lcom/weirdvoice/utils/Theme;->applyLayoutMargin(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/widgets/Dialpad;->dispatchDialKeyEvent(I)V

    .line 152
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 119
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 121
    sget-object v2, Lcom/weirdvoice/widgets/Dialpad;->DIGITS_BTNS:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    return-void

    .line 121
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 122
    .local v1, "buttonId":I
    invoke-virtual {p0, v1}, Lcom/weirdvoice/widgets/Dialpad;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 123
    .local v0, "button":Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setOnDialKeyListener(Lcom/weirdvoice/widgets/Dialpad$OnDialKeyListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/weirdvoice/widgets/Dialpad$OnDialKeyListener;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/weirdvoice/widgets/Dialpad;->onDialKeyListener:Lcom/weirdvoice/widgets/Dialpad$OnDialKeyListener;

    .line 139
    return-void
.end method
