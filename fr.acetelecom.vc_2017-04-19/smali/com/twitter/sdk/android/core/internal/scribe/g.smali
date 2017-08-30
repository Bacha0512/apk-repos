.class public Lcom/twitter/sdk/android/core/internal/scribe/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/twitter/sdk/android/core/internal/scribe/c;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/twitter/sdk/android/core/internal/scribe/f;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/internal/scribe/c;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/twitter/sdk/android/core/internal/scribe/f;"
        }
    .end annotation

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/c;->a:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/j;

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/core/internal/scribe/j;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/c;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object v1, v0

    :goto_1
    return-object v1

    :pswitch_0
    const-string v2, "tfw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/twitter/sdk/android/core/internal/scribe/k;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/twitter/sdk/android/core/internal/scribe/k;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/c;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1c045
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
