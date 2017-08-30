.class public final Lcom/tapjoy/internal/gl$j$a;
.super Lcom/tapjoy/internal/do$a;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private b:I

.field private c:Ljava/lang/Object;

.field private d:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12574
    invoke-direct {p0}, Lcom/tapjoy/internal/do$a;-><init>()V

    .line 12671
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$j$a;->c:Ljava/lang/Object;

    .line 12576
    return-void
.end method

.method static synthetic e()Lcom/tapjoy/internal/gl$j$a;
    .locals 1

    .prologue
    .line 16581
    new-instance v0, Lcom/tapjoy/internal/gl$j$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$j$a;-><init>()V

    .line 12567
    return-object v0
.end method

.method private f()Lcom/tapjoy/internal/gl$j$a;
    .locals 4

    .prologue
    .line 13581
    new-instance v0, Lcom/tapjoy/internal/gl$j$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$j$a;-><init>()V

    .line 12594
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$j$a;->d()Lcom/tapjoy/internal/gl$j;

    move-result-object v1

    .line 13626
    invoke-static {}, Lcom/tapjoy/internal/gl$j;->d()Lcom/tapjoy/internal/gl$j;

    move-result-object v2

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    .line 13627
    :cond_0
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$j;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13628
    iget v2, v0, Lcom/tapjoy/internal/gl$j$a;->b:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/tapjoy/internal/gl$j$a;->b:I

    .line 13629
    invoke-static {v1}, Lcom/tapjoy/internal/gl$j;->a(Lcom/tapjoy/internal/gl$j;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/gl$j$a;->c:Ljava/lang/Object;

    .line 13632
    :cond_1
    invoke-virtual {v1}, Lcom/tapjoy/internal/gl$j;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 14396
    iget-wide v2, v1, Lcom/tapjoy/internal/gl$j;->c:J

    .line 13633
    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/gl$j$a;->a(J)Lcom/tapjoy/internal/gl$j$a;

    .line 15123
    :cond_2
    iget-object v2, v0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    .line 13635
    invoke-static {v1}, Lcom/tapjoy/internal/gl$j;->b(Lcom/tapjoy/internal/gl$j;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tapjoy/internal/dk;->a(Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    .line 15127
    iput-object v1, v0, Lcom/tapjoy/internal/do$a;->a:Lcom/tapjoy/internal/dk;

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/dh$a;
    .locals 1

    .prologue
    .line 12567
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$j$a;->f()Lcom/tapjoy/internal/gl$j$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Lcom/tapjoy/internal/gl$j$a;
    .locals 1

    .prologue
    .line 12764
    iget v0, p0, Lcom/tapjoy/internal/gl$j$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gl$j$a;->b:I

    .line 12765
    iput-wide p1, p0, Lcom/tapjoy/internal/gl$j$a;->d:J

    .line 12767
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$j$a;
    .locals 1

    .prologue
    .line 12716
    if-nez p1, :cond_0

    .line 12717
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12719
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$j$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$j$a;->b:I

    .line 12720
    iput-object p1, p0, Lcom/tapjoy/internal/gl$j$a;->c:Ljava/lang/Object;

    .line 12722
    return-object p0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/do$a;
    .locals 1

    .prologue
    .line 12567
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$j$a;->f()Lcom/tapjoy/internal/gl$j$a;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 12641
    .line 15676
    iget v2, p0, Lcom/tapjoy/internal/gl$j$a;->b:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_1

    move v2, v1

    .line 12641
    :goto_0
    if-nez v2, :cond_2

    .line 12649
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v0

    .line 15676
    goto :goto_0

    .line 15752
    :cond_2
    iget v2, p0, Lcom/tapjoy/internal/gl$j$a;->b:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    move v2, v1

    .line 12645
    :goto_2
    if-eqz v2, :cond_0

    move v0, v1

    .line 12649
    goto :goto_1

    :cond_3
    move v2, v0

    .line 15752
    goto :goto_2
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12567
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$j$a;->f()Lcom/tapjoy/internal/gl$j$a;

    move-result-object v0

    return-object v0
.end method

.method final d()Lcom/tapjoy/internal/gl$j;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 12610
    new-instance v2, Lcom/tapjoy/internal/gl$j;

    invoke-direct {v2, p0, v1}, Lcom/tapjoy/internal/gl$j;-><init>(Lcom/tapjoy/internal/do$a;B)V

    .line 12611
    iget v3, p0, Lcom/tapjoy/internal/gl$j$a;->b:I

    .line 12613
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_1

    .line 12616
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$j$a;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$j;->a(Lcom/tapjoy/internal/gl$j;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12617
    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 12618
    or-int/lit8 v0, v0, 0x2

    .line 12620
    :cond_0
    iget-wide v4, p0, Lcom/tapjoy/internal/gl$j$a;->d:J

    invoke-static {v2, v4, v5}, Lcom/tapjoy/internal/gl$j;->a(Lcom/tapjoy/internal/gl$j;J)J

    .line 12621
    invoke-static {v2, v0}, Lcom/tapjoy/internal/gl$j;->a(Lcom/tapjoy/internal/gl$j;I)I

    .line 12622
    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method
