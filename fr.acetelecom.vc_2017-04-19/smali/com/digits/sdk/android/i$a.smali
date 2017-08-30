.class public Lcom/digits/sdk/android/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digits/sdk/android/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/digits/sdk/android/g;

.field e:Lcom/digits/sdk/android/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/digits/sdk/android/i$a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/digits/sdk/android/g;)Lcom/digits/sdk/android/i$a;
    .locals 0

    iput-object p1, p0, Lcom/digits/sdk/android/i$a;->d:Lcom/digits/sdk/android/g;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/digits/sdk/android/i$a;
    .locals 0

    iput-object p1, p0, Lcom/digits/sdk/android/i$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/digits/sdk/android/i;
    .locals 6

    iget-object v0, p0, Lcom/digits/sdk/android/i$a;->d:Lcom/digits/sdk/android/g;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AuthCallback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/digits/sdk/android/i$a;->e:Lcom/digits/sdk/android/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/digits/sdk/android/i$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/digits/sdk/android/i$a;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PhoneNumber and partnerKey must be set when confirmationCodeCallback is used. Please contact support for more information."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/digits/sdk/android/i;

    iget-boolean v1, p0, Lcom/digits/sdk/android/i$a;->a:Z

    iget-object v2, p0, Lcom/digits/sdk/android/i$a;->b:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, ""

    :goto_0
    iget-object v3, p0, Lcom/digits/sdk/android/i$a;->d:Lcom/digits/sdk/android/g;

    iget-object v4, p0, Lcom/digits/sdk/android/i$a;->e:Lcom/digits/sdk/android/m;

    iget-object v5, p0, Lcom/digits/sdk/android/i$a;->c:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/digits/sdk/android/i;-><init>(ZLjava/lang/String;Lcom/digits/sdk/android/g;Lcom/digits/sdk/android/m;Ljava/lang/String;)V

    return-object v0

    :cond_3
    iget-object v2, p0, Lcom/digits/sdk/android/i$a;->b:Ljava/lang/String;

    goto :goto_0
.end method
