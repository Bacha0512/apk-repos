.class Lcom/digits/sdk/android/cd;
.super Lcom/digits/sdk/a;


# instance fields
.field final c:Lcom/digits/sdk/android/ap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/digits/sdk/android/ap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/digits/sdk/a;-><init>(Landroid/content/Context;Lcom/digits/sdk/android/ap;)V

    iput-object p2, p0, Lcom/digits/sdk/android/cd;->c:Lcom/digits/sdk/android/ap;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)Lcom/digits/sdk/android/am;
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/digits/sdk/a;->a(ILandroid/os/Bundle;)Lcom/digits/sdk/android/am;

    move-result-object v0

    const-string v1, "search_prefix"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "invitedPhoneNumbers"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/am;->a(Landroid/net/Uri;)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lcom/digits/sdk/android/am;->b(Ljava/util/List;)V

    :cond_1
    return-object v0
.end method

.method public synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/digits/sdk/android/cd;->a(ILandroid/os/Bundle;)Lcom/digits/sdk/android/am;

    move-result-object v0

    return-object v0
.end method
