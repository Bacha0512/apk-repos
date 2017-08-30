.class public Lcom/weirdvoice/ui/rates/CountryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CountryAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/rates/CountryAdapter$CountryHolder;,
        Lcom/weirdvoice/ui/rates/CountryAdapter$CurrenciesTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/weirdvoice/ui/rates/ZeCountry;",
        ">;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private currencies:Ljava/lang/String;

.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/weirdvoice/ui/rates/ZeCountry;",
            ">;"
        }
    .end annotation
.end field

.field layoutResourceId:I

.field mapIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field sections:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/weirdvoice/ui/rates/ZeCountry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p3, "datalst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/weirdvoice/ui/rates/ZeCountry;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/weirdvoice/ui/rates/CountryAdapter;->data:Ljava/util/ArrayList;

    .line 46
    iput p2, p0, Lcom/weirdvoice/ui/rates/CountryAdapter;->layoutResourceId:I

    .line 47
    iput-object p1, p0, Lcom/weirdvoice/ui/rates/CountryAdapter;->context:Landroid/content/Context;

    .line 48
    iput-object p3, p0, Lcom/weirdvoice/ui/rates/CountryAdapter;->data:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Lcom/weirdvoice/ui/rates/CountryAdapter$CurrenciesTask;

    invoke-direct {v0, p0}, Lcom/weirdvoice/ui/rates/CountryAdapter$CurrenciesTask;-><init>(Lcom/weirdvoice/ui/rates/CountryAdapter;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/rates/CountryAdapter$CurrenciesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/ui/rates/CountryAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/weirdvoice/ui/rates/CountryAdapter;->currencies:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/weirdvoice/ui/rates/CountryAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/weirdvoice/ui/rates/CountryAdapter;->currencies:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 3
    .param p1, "section"    # I

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 162
    .local v0, "idx":I
    :try_start_0
    iget-object v1, p0, Lcom/weirdvoice/ui/rates/CountryAdapter;->mapIndex:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/weirdvoice/ui/rates/CountryAdapter;->sections:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 165
    :goto_0
    return v0

    .line 163
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/weirdvoice/ui/rates/CountryAdapter;->sections:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 123
    move-object v2, p2

    .line 124
    .local v2, "row":Landroid/view/View;
    const/4 v0, 0x0

    .line 126
    .local v0, "holder":Lcom/weirdvoice/ui/rates/CountryAdapter$CountryHolder;
    if-nez v2, :cond_0

    .line 127
    iget-object v4, p0, Lcom/weirdvoice/ui/rates/CountryAdapter;->context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 128
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/weirdvoice/ui/rates/CountryAdapter;->layoutResourceId:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 129
    new-instance v0, Lcom/weirdvoice/ui/rates/CountryAdapter$CountryHolder;

    .end local v0    # "holder":Lcom/weirdvoice/ui/rates/CountryAdapter$CountryHolder;
    invoke-direct {v0}, Lcom/weirdvoice/ui/rates/CountryAdapter$CountryHolder;-><init>()V

    .line 130
    .restart local v0    # "holder":Lcom/weirdvoice/ui/rates/CountryAdapter$CountryHolder;
    const v4, 0x7f0b0096

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/weirdvoice/ui/rates/CountryAdapter$CountryHolder;->txtName:Landroid/widget/TextView;

    .line 131
    const v4, 0x7f0b0095

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/weirdvoice/ui/rates/CountryAdapter$CountryHolder;->imFlag:Landroid/widget/ImageView;

    .line 132
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 137
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v4, p0, Lcom/weirdvoice/ui/rates/CountryAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/weirdvoice/ui/rates/ZeCountry;

    .line 138
    .local v3, "zeCountry":Lcom/weirdvoice/ui/rates/ZeCountry;
    iget-object v4, v0, Lcom/weirdvoice/ui/rates/CountryAdapter$CountryHolder;->txtName:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/weirdvoice/ui/rates/ZeCountry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v4, v0, Lcom/weirdvoice/ui/rates/CountryAdapter$CountryHolder;->imFlag:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/weirdvoice/ui/rates/CountryAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ic_flag_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/weirdvoice/ui/rates/ZeCountry;->getFlag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "drawable"

    const-string v8, "com.weirdvoice"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    new-instance v4, Lcom/weirdvoice/ui/rates/CountryAdapter$1;

    invoke-direct {v4, p0, v3}, Lcom/weirdvoice/ui/rates/CountryAdapter$1;-><init>(Lcom/weirdvoice/ui/rates/CountryAdapter;Lcom/weirdvoice/ui/rates/ZeCountry;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    return-object v2

    .line 134
    .end local v3    # "zeCountry":Lcom/weirdvoice/ui/rates/ZeCountry;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/weirdvoice/ui/rates/CountryAdapter$CountryHolder;
    check-cast v0, Lcom/weirdvoice/ui/rates/CountryAdapter$CountryHolder;

    .restart local v0    # "holder":Lcom/weirdvoice/ui/rates/CountryAdapter$CountryHolder;
    goto :goto_0
.end method
