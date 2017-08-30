.class public Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CountriesListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rami_bar/fun_call/adapters/CountriesListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    .line 21
    const v0, 0x7f040079

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 22
    iput-object p1, p0, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;->context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;->values:[Ljava/lang/String;

    .line 24
    return-void
.end method

.method private GetCountryName(I)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 63
    iget-object v2, p0, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;->values:[Ljava/lang/String;

    aget-object v2, v2, p1

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "g":[Ljava/lang/String;
    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .local v1, "loc":Ljava/util/Locale;
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getCustomView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 38
    if-nez p2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;->context:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 40
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040079

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 41
    new-instance v0, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter$ViewHolder;

    invoke-direct {v0, p0, v4}, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter$ViewHolder;-><init>(Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;Lcom/rami_bar/fun_call/adapters/CountriesListAdapter$1;)V

    .line 43
    .local v0, "holder":Lcom/rami_bar/fun_call/adapters/CountriesListAdapter$ViewHolder;
    const v2, 0x7f1001e9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter$ViewHolder;->txtViewCountryCode:Landroid/widget/TextView;

    .line 44
    const v2, 0x7f1001e8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter$ViewHolder;->txtViewCountryName:Landroid/widget/TextView;

    .line 45
    const v2, 0x7f1001e7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter$ViewHolder;->imgViewFlag:Landroid/widget/ImageView;

    .line 47
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    .end local v0    # "holder":Lcom/rami_bar/fun_call/adapters/CountriesListAdapter$ViewHolder;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter$ViewHolder;

    .line 51
    .restart local v0    # "holder":Lcom/rami_bar/fun_call/adapters/CountriesListAdapter$ViewHolder;
    iget-object v2, v0, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter$ViewHolder;->txtViewCountryName:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;->GetCountryName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v2, v0, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter$ViewHolder;->txtViewCountryCode:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;->GetCountryCallingCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v2, v0, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter$ViewHolder;->imgViewFlag:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;->getCountryImageResource(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    return-object p2
.end method


# virtual methods
.method public GetCountryCallingCode(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 69
    iget-object v1, p0, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;->values:[Ljava/lang/String;

    aget-object v1, v1, p1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "g":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public GetCountryShortCode(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 58
    iget-object v1, p0, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;->values:[Ljava/lang/String;

    aget-object v1, v1, p1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "g":[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCountryImageResource(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 74
    iget-object v2, p0, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;->values:[Ljava/lang/String;

    aget-object v2, v2, p1

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "g":[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "pngName":Ljava/lang/String;
    iget-object v2, p0, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawable/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;->getCustomView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;->getCustomView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
