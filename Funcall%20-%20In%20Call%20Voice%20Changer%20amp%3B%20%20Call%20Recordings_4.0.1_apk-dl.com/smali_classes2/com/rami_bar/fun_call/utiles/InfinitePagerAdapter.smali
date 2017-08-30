.class public Lcom/rami_bar/fun_call/utiles/InfinitePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "InfinitePagerAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "InfinitePagerAdapter"


# instance fields
.field private adapter:Landroid/support/v4/view/PagerAdapter;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/PagerAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/rami_bar/fun_call/utiles/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    .line 22
    return-void
.end method

.method private debug(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 134
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/utiles/InfinitePagerAdapter;->getRealCount()I

    move-result v1

    rem-int v0, p2, v1

    .line 54
    .local v0, "virtualPosition":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyItem: real position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/rami_bar/fun_call/utiles/InfinitePagerAdapter;->debug(Ljava/lang/String;)V

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyItem: virtual position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/rami_bar/fun_call/utiles/InfinitePagerAdapter;->debug(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/rami_bar/fun_call/utiles/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1, v0, p3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 59
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 68
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/utiles/InfinitePagerAdapter;->getRealCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/utiles/InfinitePagerAdapter;->getRealCount()I

    move-result v1

    rem-int v0, p1, v1

    .line 93
    .local v0, "virtualPosition":I
    iget-object v1, p0, Lcom/rami_bar/fun_call/utiles/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public getPageWidth(I)F
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v0

    return v0
.end method

.method public getRealCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/utiles/InfinitePagerAdapter;->getRealCount()I

    move-result v1

    rem-int v0, p2, v1

    .line 44
    .local v0, "virtualPosition":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "instantiateItem: real position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/rami_bar/fun_call/utiles/InfinitePagerAdapter;->debug(Ljava/lang/String;)V

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "instantiateItem: virtual position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/rami_bar/fun_call/utiles/InfinitePagerAdapter;->debug(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/rami_bar/fun_call/utiles/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 119
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 114
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Parcelable;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 78
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 104
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 88
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 109
    return-void
.end method
