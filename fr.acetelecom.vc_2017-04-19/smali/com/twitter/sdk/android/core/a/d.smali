.class public Lcom/twitter/sdk/android/core/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/k;
.implements Lcom/google/a/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/a/k",
        "<",
        "Lcom/twitter/sdk/android/core/a/c;",
        ">;",
        "Lcom/google/a/s",
        "<",
        "Lcom/twitter/sdk/android/core/a/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/a/c;Ljava/lang/reflect/Type;Lcom/google/a/r;)Lcom/google/a/l;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/a/r;)Lcom/google/a/l;
    .locals 1

    check-cast p1, Lcom/twitter/sdk/android/core/a/c;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/sdk/android/core/a/d;->a(Lcom/twitter/sdk/android/core/a/c;Ljava/lang/reflect/Type;Lcom/google/a/r;)Lcom/google/a/l;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/l;Ljava/lang/reflect/Type;Lcom/google/a/j;)Lcom/twitter/sdk/android/core/a/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/p;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/a/l;->h()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/twitter/sdk/android/core/a/c;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/a/c;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/a/l;->k()Lcom/google/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/o;->o()Ljava/util/Set;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/l;

    invoke-virtual {v0}, Lcom/google/a/l;->k()Lcom/google/a/o;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/twitter/sdk/android/core/a/d;->a(Lcom/google/a/o;Lcom/google/a/j;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/twitter/sdk/android/core/a/c;

    invoke-direct {v0, v2}, Lcom/twitter/sdk/android/core/a/c;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method a(Lcom/google/a/o;Lcom/google/a/j;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "type"

    invoke-virtual {p1, v1}, Lcom/google/a/o;->a(Ljava/lang/String;)Lcom/google/a/l;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/a/l;->i()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/google/a/l;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "string_value"

    invoke-virtual {p1, v0}, Lcom/google/a/o;->a(Ljava/lang/String;)Lcom/google/a/l;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lcom/google/a/j;->a(Lcom/google/a/l;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :sswitch_0
    const-string v3, "STRING"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "IMAGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "USER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "BOOLEAN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :pswitch_1
    const-string v0, "image_value"

    invoke-virtual {p1, v0}, Lcom/google/a/o;->a(Ljava/lang/String;)Lcom/google/a/l;

    move-result-object v0

    const-class v1, Lcom/twitter/sdk/android/core/a/e;

    invoke-interface {p2, v0, v1}, Lcom/google/a/j;->a(Lcom/google/a/l;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const-string v0, "user_value"

    invoke-virtual {p1, v0}, Lcom/google/a/o;->a(Ljava/lang/String;)Lcom/google/a/l;

    move-result-object v0

    const-class v1, Lcom/twitter/sdk/android/core/a/i;

    invoke-interface {p2, v0, v1}, Lcom/google/a/j;->a(Lcom/google/a/l;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const-string v0, "boolean_value"

    invoke-virtual {p1, v0}, Lcom/google/a/o;->a(Ljava/lang/String;)Lcom/google/a/l;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    invoke-interface {p2, v0, v1}, Lcom/google/a/j;->a(Lcom/google/a/l;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x6d97abef -> :sswitch_0
        0x27e3cb -> :sswitch_2
        0x428b13b -> :sswitch_1
        0x2ea6f808 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public synthetic b(Lcom/google/a/l;Ljava/lang/reflect/Type;Lcom/google/a/j;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/p;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/sdk/android/core/a/d;->a(Lcom/google/a/l;Ljava/lang/reflect/Type;Lcom/google/a/j;)Lcom/twitter/sdk/android/core/a/c;

    move-result-object v0

    return-object v0
.end method
