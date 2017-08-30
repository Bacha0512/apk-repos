.class public Lcom/digits/sdk/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/digits/sdk/android/al;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/digits/sdk/android/ap;

.field final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/digits/sdk/android/ap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/digits/sdk/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/digits/sdk/a;->a:Lcom/digits/sdk/android/ap;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)Lcom/digits/sdk/android/am;
    .locals 3

    const-string v0, "matched_phone_numbers"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/digits/sdk/android/am;

    iget-object v2, p0, Lcom/digits/sdk/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/digits/sdk/android/am;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/digits/sdk/android/am;->a(Ljava/util/List;)V

    return-object v1
.end method

.method public a(Landroid/content/Loader;Lcom/digits/sdk/android/al;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/digits/sdk/android/al;",
            ">;",
            "Lcom/digits/sdk/android/al;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/digits/sdk/a;->a:Lcom/digits/sdk/android/ap;

    invoke-virtual {v0, p2}, Lcom/digits/sdk/android/ap;->a(Lcom/digits/sdk/android/al;)Landroid/database/Cursor;

    return-void
.end method

.method public synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/digits/sdk/a;->a(ILandroid/os/Bundle;)Lcom/digits/sdk/android/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/digits/sdk/android/al;

    invoke-virtual {p0, p1, p2}, Lcom/digits/sdk/a;->a(Landroid/content/Loader;Lcom/digits/sdk/android/al;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/digits/sdk/android/al;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/digits/sdk/a;->a:Lcom/digits/sdk/android/ap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/ap;->a(Lcom/digits/sdk/android/al;)Landroid/database/Cursor;

    return-void
.end method
