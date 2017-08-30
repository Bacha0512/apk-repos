.class public Lcom/digits/sdk/android/ContactsUploadFailureResult;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digits/sdk/android/ContactsUploadFailureResult$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/digits/sdk/android/ContactsUploadFailureResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/digits/sdk/android/ContactsUploadFailureResult$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/digits/sdk/android/ContactsUploadFailureResult$2;

    invoke-direct {v0}, Lcom/digits/sdk/android/ContactsUploadFailureResult$2;-><init>()V

    sput-object v0, Lcom/digits/sdk/android/ContactsUploadFailureResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {}, Lcom/digits/sdk/android/ContactsUploadFailureResult$a;->values()[Lcom/digits/sdk/android/ContactsUploadFailureResult$a;

    move-result-object v1

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/digits/sdk/android/ContactsUploadFailureResult;->a:Lcom/digits/sdk/android/ContactsUploadFailureResult$a;

    return-void
.end method

.method public constructor <init>(Lcom/digits/sdk/android/ContactsUploadFailureResult$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/digits/sdk/android/ContactsUploadFailureResult;->a:Lcom/digits/sdk/android/ContactsUploadFailureResult$a;

    return-void
.end method

.method public static a(Ljava/lang/Exception;)Lcom/digits/sdk/android/ContactsUploadFailureResult;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/digits/sdk/android/ContactsUploadFailureResult;->a(Ljava/util/List;)Lcom/digits/sdk/android/ContactsUploadFailureResult;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;)Lcom/digits/sdk/android/ContactsUploadFailureResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;)",
            "Lcom/digits/sdk/android/ContactsUploadFailureResult;"
        }
    .end annotation

    new-instance v0, Lcom/digits/sdk/android/ContactsUploadFailureResult;

    invoke-static {p0}, Lcom/digits/sdk/android/ContactsUploadFailureResult;->b(Ljava/util/List;)Lcom/digits/sdk/android/ContactsUploadFailureResult$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/digits/sdk/android/ContactsUploadFailureResult;-><init>(Lcom/digits/sdk/android/ContactsUploadFailureResult$a;)V

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/Exception;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;>;)",
            "Ljava/lang/Exception;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lcom/digits/sdk/android/ContactsUploadFailureResult$1;

    invoke-direct {v0}, Lcom/digits/sdk/android/ContactsUploadFailureResult$1;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    goto :goto_0
.end method

.method public static b(Ljava/util/List;)Lcom/digits/sdk/android/ContactsUploadFailureResult$a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;)",
            "Lcom/digits/sdk/android/ContactsUploadFailureResult$a;"
        }
    .end annotation

    const/16 v4, 0x190

    invoke-static {p0}, Lcom/digits/sdk/android/ContactsUploadFailureResult;->c(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/digits/sdk/android/ContactsUploadFailureResult;->a(Ljava/util/Map;)Ljava/lang/Exception;

    move-result-object v1

    instance-of v0, v1, Ljava/lang/SecurityException;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/digits/sdk/android/ContactsUploadFailureResult$a;->b:Lcom/digits/sdk/android/ContactsUploadFailureResult$a;

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, v1, Lcom/twitter/sdk/android/core/m;

    if-eqz v0, :cond_7

    move-object v0, v1

    check-cast v0, Lcom/twitter/sdk/android/core/m;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/m;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/m;->b()I

    move-result v0

    if-ne v2, v4, :cond_1

    const/16 v3, 0xd6

    if-ne v0, v3, :cond_1

    sget-object v0, Lcom/digits/sdk/android/ContactsUploadFailureResult$a;->c:Lcom/digits/sdk/android/ContactsUploadFailureResult$a;

    goto :goto_0

    :cond_1
    if-ne v2, v4, :cond_2

    const/16 v3, 0xd7

    if-ne v0, v3, :cond_2

    sget-object v0, Lcom/digits/sdk/android/ContactsUploadFailureResult$a;->d:Lcom/digits/sdk/android/ContactsUploadFailureResult$a;

    goto :goto_0

    :cond_2
    const/16 v3, 0x191

    if-ne v2, v3, :cond_3

    const/16 v3, 0x87

    if-ne v0, v3, :cond_3

    sget-object v0, Lcom/digits/sdk/android/ContactsUploadFailureResult$a;->e:Lcom/digits/sdk/android/ContactsUploadFailureResult$a;

    goto :goto_0

    :cond_3
    const/16 v3, 0x19d

    if-ne v2, v3, :cond_4

    sget-object v0, Lcom/digits/sdk/android/ContactsUploadFailureResult$a;->f:Lcom/digits/sdk/android/ContactsUploadFailureResult$a;

    goto :goto_0

    :cond_4
    const/16 v3, 0x1ad

    if-ne v2, v3, :cond_5

    const/16 v3, 0x58

    if-ne v0, v3, :cond_5

    sget-object v0, Lcom/digits/sdk/android/ContactsUploadFailureResult$a;->h:Lcom/digits/sdk/android/ContactsUploadFailureResult$a;

    goto :goto_0

    :cond_5
    const/16 v0, 0x1f4

    if-ne v2, v0, :cond_6

    sget-object v0, Lcom/digits/sdk/android/ContactsUploadFailureResult$a;->i:Lcom/digits/sdk/android/ContactsUploadFailureResult$a;

    goto :goto_0

    :cond_6
    const/16 v0, 0x1f7

    if-ne v2, v0, :cond_7

    sget-object v0, Lcom/digits/sdk/android/ContactsUploadFailureResult$a;->j:Lcom/digits/sdk/android/ContactsUploadFailureResult$a;

    goto :goto_0

    :cond_7
    instance-of v0, v1, Lcom/twitter/sdk/android/core/p;

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/digits/sdk/android/ContactsUploadFailureResult$a;->a:Lcom/digits/sdk/android/ContactsUploadFailureResult$a;

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/digits/sdk/android/ContactsUploadFailureResult$a;->k:Lcom/digits/sdk/android/ContactsUploadFailureResult$a;

    goto :goto_0
.end method

.method public static c(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;>;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContactsUploadFailureResult{summary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/digits/sdk/android/ContactsUploadFailureResult;->a:Lcom/digits/sdk/android/ContactsUploadFailureResult$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/ContactsUploadFailureResult;->a:Lcom/digits/sdk/android/ContactsUploadFailureResult$a;

    invoke-virtual {v0}, Lcom/digits/sdk/android/ContactsUploadFailureResult$a;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
