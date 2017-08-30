.class public Lcom/digits/sdk/android/cc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digits/sdk/android/cc$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/digits/sdk/android/cc$a;

.field private c:Lcom/digits/sdk/android/e;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/digits/sdk/android/cc$a;->a:Lcom/digits/sdk/android/cc$a;

    new-instance v2, Lcom/digits/sdk/android/MockApiInterface;

    invoke-direct {v2}, Lcom/digits/sdk/android/MockApiInterface;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/digits/sdk/android/cc;-><init>(ZLcom/digits/sdk/android/cc$a;Lcom/digits/sdk/android/e;)V

    return-void
.end method

.method public constructor <init>(ZLcom/digits/sdk/android/cc$a;Lcom/digits/sdk/android/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/digits/sdk/android/cc;->a:Z

    iput-object p2, p0, Lcom/digits/sdk/android/cc;->b:Lcom/digits/sdk/android/cc$a;

    iput-object p3, p0, Lcom/digits/sdk/android/cc;->c:Lcom/digits/sdk/android/e;

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/digits/sdk/android/cc;->a:Z

    return v0
.end method

.method protected a(Lcom/digits/sdk/android/cc$a;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/digits/sdk/android/cc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/cc;->b:Lcom/digits/sdk/android/cc$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/cc;->b:Lcom/digits/sdk/android/cc$a;

    invoke-virtual {v0, p1}, Lcom/digits/sdk/android/cc$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()Lcom/digits/sdk/android/e;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/cc;->c:Lcom/digits/sdk/android/e;

    return-object v0
.end method
