.class public final Lb/a/b/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/b$a;
    }
.end annotation


# instance fields
.field public final a:Lb/z;

.field public final b:Lb/ab;


# direct methods
.method private constructor <init>(Lb/z;Lb/ab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/b/b;->a:Lb/z;

    iput-object p2, p0, Lb/a/b/b;->b:Lb/ab;

    return-void
.end method

.method synthetic constructor <init>(Lb/z;Lb/ab;Lb/a/b/b$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/a/b/b;-><init>(Lb/z;Lb/ab;)V

    return-void
.end method

.method public static a(Lb/ab;Lb/z;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lb/ab;->b()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    const-string v1, "Expires"

    invoke-virtual {p0, v1}, Lb/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lb/ab;->i()Lb/d;

    move-result-object v1

    invoke-virtual {v1}, Lb/d;->c()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lb/ab;->i()Lb/d;

    move-result-object v1

    invoke-virtual {v1}, Lb/d;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lb/ab;->i()Lb/d;

    move-result-object v1

    invoke-virtual {v1}, Lb/d;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    :sswitch_1
    invoke-virtual {p0}, Lb/ab;->i()Lb/d;

    move-result-object v1

    invoke-virtual {v1}, Lb/d;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lb/z;->f()Lb/d;

    move-result-object v1

    invoke-virtual {v1}, Lb/d;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_1
        0x12c -> :sswitch_1
        0x12d -> :sswitch_1
        0x12e -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_1
        0x194 -> :sswitch_1
        0x195 -> :sswitch_1
        0x19a -> :sswitch_1
        0x19e -> :sswitch_1
        0x1f5 -> :sswitch_1
    .end sparse-switch
.end method
