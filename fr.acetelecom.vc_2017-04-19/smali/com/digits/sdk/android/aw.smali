.class public Lcom/digits/sdk/android/aw;
.super Lcom/twitter/sdk/android/core/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digits/sdk/android/aw$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/j",
        "<",
        "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/digits/sdk/android/models/f;


# instance fields
.field private final b:Ljava/lang/String;
    .annotation runtime Lcom/google/a/a/c;
        a = "phone_number"
    .end annotation
.end field

.field private final c:Lcom/digits/sdk/android/models/f;
    .annotation runtime Lcom/google/a/a/c;
        a = "email"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/digits/sdk/android/models/f;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/digits/sdk/android/models/f;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/digits/sdk/android/aw;->a:Lcom/digits/sdk/android/models/f;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthToken;JLjava/lang/String;Lcom/digits/sdk/android/models/f;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/sdk/android/core/j;-><init>(Lcom/twitter/sdk/android/core/a;J)V

    iput-object p4, p0, Lcom/digits/sdk/android/aw;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/digits/sdk/android/aw;->c:Lcom/digits/sdk/android/models/f;

    return-void
.end method

.method static a(Lcom/digits/sdk/android/models/e;Ljava/lang/String;)Lcom/digits/sdk/android/aw;
    .locals 6

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "result must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "phoneNumber must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/digits/sdk/android/aw;

    new-instance v1, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v2, p0, Lcom/digits/sdk/android/models/e;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/digits/sdk/android/models/e;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/twitter/sdk/android/core/TwitterAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/digits/sdk/android/models/e;->d:J

    sget-object v5, Lcom/digits/sdk/android/aw;->a:Lcom/digits/sdk/android/models/f;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/digits/sdk/android/aw;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthToken;JLjava/lang/String;Lcom/digits/sdk/android/models/f;)V

    return-object v0
.end method

.method public static a(Lcom/digits/sdk/android/models/k;)Lcom/digits/sdk/android/aw;
    .locals 6

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "verifyAccountResponse must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/digits/sdk/android/aw;

    iget-object v1, p0, Lcom/digits/sdk/android/models/k;->a:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-wide v2, p0, Lcom/digits/sdk/android/models/k;->b:J

    iget-object v4, p0, Lcom/digits/sdk/android/models/k;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/digits/sdk/android/models/k;->d:Lcom/digits/sdk/android/models/f;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/digits/sdk/android/models/k;->d:Lcom/digits/sdk/android/models/f;

    :goto_0
    invoke-direct/range {v0 .. v5}, Lcom/digits/sdk/android/aw;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthToken;JLjava/lang/String;Lcom/digits/sdk/android/models/f;)V

    return-object v0

    :cond_1
    sget-object v5, Lcom/digits/sdk/android/aw;->a:Lcom/digits/sdk/android/models/f;

    goto :goto_0
.end method

.method static a(Lcom/twitter/sdk/android/core/i;Ljava/lang/String;)Lcom/digits/sdk/android/aw;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/i",
            "<",
            "Lcom/digits/sdk/android/models/DigitsUser;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/digits/sdk/android/aw;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "result must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "result.data must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->b:Ld/l;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "result.response must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p1, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "phoneNumber must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->b:Ld/l;

    invoke-virtual {v0}, Ld/l;->b()Lb/r;

    move-result-object v3

    const-string v2, ""

    const-string v1, ""

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move-object v1, v2

    move v2, v6

    :goto_0
    invoke-virtual {v3}, Lb/r;->a()I

    move-result v4

    if-ge v2, v4, :cond_7

    const-string v4, "x-twitter-new-account-oauth-access-token"

    invoke-virtual {v3, v2}, Lb/r;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v2}, Lb/r;->b(I)Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object v2, v0

    move-object v3, v1

    :goto_2
    new-instance v0, Lcom/digits/sdk/android/aw;

    new-instance v1, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-direct {v1, v3, v2}, Lcom/twitter/sdk/android/core/TwitterAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast v2, Lcom/digits/sdk/android/models/DigitsUser;

    iget-wide v2, v2, Lcom/digits/sdk/android/models/DigitsUser;->a:J

    sget-object v5, Lcom/digits/sdk/android/aw;->a:Lcom/digits/sdk/android/models/f;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/digits/sdk/android/aw;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthToken;JLjava/lang/String;Lcom/digits/sdk/android/models/f;)V

    return-object v0

    :cond_5
    const-string v4, "x-twitter-new-account-oauth-secret"

    invoke-virtual {v3, v2}, Lb/r;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v2}, Lb/r;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    move-object v2, v0

    move-object v3, v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/digits/sdk/android/aw;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/aw;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(J)Z
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/twitter/sdk/android/core/TwitterAuthToken;)Z
    .locals 1

    iget-object v0, p1, Lcom/twitter/sdk/android/core/TwitterAuthToken;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/twitter/sdk/android/core/TwitterAuthToken;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/digits/sdk/android/aw;)Lcom/digits/sdk/android/models/f;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/aw;->c:Lcom/digits/sdk/android/models/f;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 2

    invoke-virtual {p0}, Lcom/digits/sdk/android/aw;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/digits/sdk/android/aw;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/digits/sdk/android/aw;->d()Lcom/twitter/sdk/android/core/a;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-direct {p0, v0}, Lcom/digits/sdk/android/aw;->a(Lcom/twitter/sdk/android/core/TwitterAuthToken;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/digits/sdk/android/models/f;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/aw;->c:Lcom/digits/sdk/android/models/f;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/aw;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    invoke-super {p0, p1}, Lcom/twitter/sdk/android/core/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast p1, Lcom/digits/sdk/android/aw;

    iget-object v2, p0, Lcom/digits/sdk/android/aw;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/digits/sdk/android/aw;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/digits/sdk/android/aw;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/digits/sdk/android/aw;->c:Lcom/digits/sdk/android/models/f;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/digits/sdk/android/aw;->c:Lcom/digits/sdk/android/models/f;

    iget-object v3, p1, Lcom/digits/sdk/android/aw;->c:Lcom/digits/sdk/android/models/f;

    invoke-virtual {v2, v3}, Lcom/digits/sdk/android/models/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/digits/sdk/android/aw;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lcom/digits/sdk/android/aw;->c:Lcom/digits/sdk/android/models/f;

    if-nez v2, :cond_3

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/twitter/sdk/android/core/j;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/digits/sdk/android/aw;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/digits/sdk/android/aw;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/digits/sdk/android/aw;->c:Lcom/digits/sdk/android/models/f;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/digits/sdk/android/aw;->c:Lcom/digits/sdk/android/models/f;

    invoke-virtual {v1}, Lcom/digits/sdk/android/models/f;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
