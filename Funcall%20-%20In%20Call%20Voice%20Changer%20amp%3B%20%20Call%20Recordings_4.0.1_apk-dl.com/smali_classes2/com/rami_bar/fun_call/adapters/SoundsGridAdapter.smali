.class public Lcom/rami_bar/fun_call/adapters/SoundsGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "SoundsGridAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private final gridValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rami_bar/fun_call/objects/InCallSounds;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rami_bar/fun_call/objects/InCallSounds;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "gridValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/rami_bar/fun_call/objects/InCallSounds;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/rami_bar/fun_call/adapters/SoundsGridAdapter;->context:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/rami_bar/fun_call/adapters/SoundsGridAdapter;->gridValues:Ljava/util/ArrayList;

    .line 23
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/rami_bar/fun_call/adapters/SoundsGridAdapter;->gridValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/rami_bar/fun_call/adapters/SoundsGridAdapter;->gridValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 37
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 42
    iget-object v3, p0, Lcom/rami_bar/fun_call/adapters/SoundsGridAdapter;->context:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 46
    .local v1, "inflater":Landroid/view/LayoutInflater;
    if-nez p2, :cond_0

    .line 47
    const v3, 0x7f040026

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "gridView":Landroid/view/View;
    const v3, 0x7f100141

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 51
    .local v2, "textView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/rami_bar/fun_call/adapters/SoundsGridAdapter;->gridValues:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rami_bar/fun_call/objects/InCallSounds;

    iget-object v3, v3, Lcom/rami_bar/fun_call/objects/InCallSounds;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .end local v2    # "textView":Landroid/widget/TextView;
    :goto_0
    return-object v0

    .line 53
    .end local v0    # "gridView":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0    # "gridView":Landroid/view/View;
    goto :goto_0
.end method
