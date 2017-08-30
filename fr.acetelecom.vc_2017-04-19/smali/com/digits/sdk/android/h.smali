.class Lcom/digits/sdk/android/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/digits/sdk/android/ar;

.field private final b:Lcom/digits/sdk/android/aj;

.field private c:Lcom/digits/sdk/android/cc;

.field private final d:Lcom/digits/sdk/android/ac;

.field private final e:Lcom/twitter/sdk/android/core/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/digits/sdk/android/aw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/ac;Lcom/twitter/sdk/android/core/k;Lcom/digits/sdk/android/aj;Lcom/digits/sdk/android/ar;Lcom/digits/sdk/android/cc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digits/sdk/android/ac;",
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/digits/sdk/android/aw;",
            ">;",
            "Lcom/digits/sdk/android/aj;",
            "Lcom/digits/sdk/android/ar;",
            "Lcom/digits/sdk/android/cc;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/digits/sdk/android/h;->b:Lcom/digits/sdk/android/aj;

    iput-object p1, p0, Lcom/digits/sdk/android/h;->d:Lcom/digits/sdk/android/ac;

    iput-object p2, p0, Lcom/digits/sdk/android/h;->e:Lcom/twitter/sdk/android/core/k;

    iput-object p5, p0, Lcom/digits/sdk/android/h;->c:Lcom/digits/sdk/android/cc;

    iput-object p4, p0, Lcom/digits/sdk/android/h;->a:Lcom/digits/sdk/android/ar;

    return-void
.end method

.method constructor <init>(Lcom/digits/sdk/android/aj;)V
    .locals 6

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v1

    invoke-static {}, Lcom/digits/sdk/android/ac;->f()Lcom/twitter/sdk/android/core/k;

    move-result-object v2

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->o()Lcom/digits/sdk/android/ar;

    move-result-object v4

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->e()Lcom/digits/sdk/android/cc;

    move-result-object v5

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/digits/sdk/android/h;-><init>(Lcom/digits/sdk/android/ac;Lcom/twitter/sdk/android/core/k;Lcom/digits/sdk/android/aj;Lcom/digits/sdk/android/ar;Lcom/digits/sdk/android/cc;)V

    return-void
.end method

.method static synthetic a(Lcom/digits/sdk/android/h;)Lcom/digits/sdk/android/ar;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/h;->a:Lcom/digits/sdk/android/ar;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__Digits@P@rtner__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/digits/sdk/android/h;->d:Lcom/digits/sdk/android/ac;

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->w()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/digits/sdk/android/h;->d:Lcom/digits/sdk/android/ac;

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->x()La/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/c;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/digits/sdk/android/h;->d:Lcom/digits/sdk/android/ac;

    invoke-virtual {v3}, Lcom/digits/sdk/android/ac;->q()Lcom/digits/sdk/android/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/digits/sdk/android/a;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const/high16 v0, 0x14000000

    goto :goto_0
.end method

.method private b(Lcom/digits/sdk/android/i;)Z
    .locals 2

    iget-object v0, p1, Lcom/digits/sdk/android/i;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/digits/sdk/android/h;->d:Lcom/digits/sdk/android/ac;

    invoke-virtual {v1}, Lcom/digits/sdk/android/ac;->s()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/digits/sdk/android/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private c(Lcom/digits/sdk/android/i;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "receiver"

    iget-object v2, p1, Lcom/digits/sdk/android/i;->d:Lcom/digits/sdk/android/g;

    invoke-virtual {p0, v2}, Lcom/digits/sdk/android/h;->a(Lcom/digits/sdk/android/g;)Lcom/digits/sdk/android/LoginResultReceiver;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "phone_number"

    iget-object v2, p1, Lcom/digits/sdk/android/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "email_enabled"

    iget-boolean v2, p1, Lcom/digits/sdk/android/i;->a:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "digits_event_details_builder"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method


# virtual methods
.method a(Lcom/digits/sdk/android/g;)Lcom/digits/sdk/android/LoginResultReceiver;
    .locals 2

    new-instance v0, Lcom/digits/sdk/android/LoginResultReceiver;

    iget-object v1, p0, Lcom/digits/sdk/android/h;->e:Lcom/twitter/sdk/android/core/k;

    invoke-direct {v0, p1, v1}, Lcom/digits/sdk/android/LoginResultReceiver;-><init>(Lcom/digits/sdk/android/g;Lcom/twitter/sdk/android/core/k;)V

    return-object v0
.end method

.method protected a(Lcom/digits/sdk/android/i;)V
    .locals 6

    iget-object v0, p0, Lcom/digits/sdk/android/h;->e:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/k;->c()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/aw;

    iget-object v1, p1, Lcom/digits/sdk/android/i;->e:Lcom/digits/sdk/android/m;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1}, Lcom/digits/sdk/android/h;->b(Lcom/digits/sdk/android/i;)Z

    move-result v2

    new-instance v3, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-direct {v3}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a(Ljava/lang/String;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b(Ljava/lang/String;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/digits/sdk/android/h;->a:Lcom/digits/sdk/android/ar;

    invoke-virtual {v3}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a()Lcom/digits/sdk/android/a/f;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/digits/sdk/android/ar;->a(Lcom/digits/sdk/android/a/f;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/digits/sdk/android/h;->a:Lcom/digits/sdk/android/ar;

    invoke-virtual {v3}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a()Lcom/digits/sdk/android/a/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/digits/sdk/android/ar;->b(Lcom/digits/sdk/android/a/f;)V

    iget-object v1, p1, Lcom/digits/sdk/android/i;->d:Lcom/digits/sdk/android/g;

    invoke-virtual {v0}, Lcom/digits/sdk/android/aw;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/digits/sdk/android/g;->a(Lcom/digits/sdk/android/aw;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/digits/sdk/android/h;->c:Lcom/digits/sdk/android/cc;

    sget-object v4, Lcom/digits/sdk/android/cc$a;->a:Lcom/digits/sdk/android/cc$a;

    invoke-virtual {v0, v4}, Lcom/digits/sdk/android/cc;->a(Lcom/digits/sdk/android/cc$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/digits/sdk/android/MockApiInterface;->e()Lcom/digits/sdk/android/aw;

    move-result-object v0

    iget-object v1, p1, Lcom/digits/sdk/android/i;->d:Lcom/digits/sdk/android/g;

    invoke-virtual {v0}, Lcom/digits/sdk/android/aw;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/digits/sdk/android/g;->a(Lcom/digits/sdk/android/aw;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1, v3}, Lcom/digits/sdk/android/h;->a(Lcom/digits/sdk/android/i;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid partner key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-direct {p0, p1, v3}, Lcom/digits/sdk/android/h;->c(Lcom/digits/sdk/android/i;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/digits/sdk/android/h;->a(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method protected a(Lcom/digits/sdk/android/i;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V
    .locals 4

    iget-object v0, p0, Lcom/digits/sdk/android/h;->a:Lcom/digits/sdk/android/ar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a()Lcom/digits/sdk/android/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/ar;->e(Lcom/digits/sdk/android/a/f;)V

    invoke-virtual {p0, p1, p2}, Lcom/digits/sdk/android/h;->b(Lcom/digits/sdk/android/i;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)Lcom/digits/sdk/android/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/bt;->a()V

    return-void
.end method

.method protected a(Ljava/lang/String;JLjava/lang/String;Lcom/twitter/sdk/android/core/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/digits/sdk/android/models/e;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/digits/sdk/android/h;->b:Lcom/digits/sdk/android/aj;

    invoke-virtual {v0}, Lcom/digits/sdk/android/aj;->b()Lcom/digits/sdk/android/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ai;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/GuestAuthApiInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/digits/sdk/android/GuestAuthApiInterface;->login(Ljava/lang/String;JLjava/lang/String;)Ld/b;

    move-result-object v0

    invoke-interface {v0, p5}, Ld/b;->a(Ld/d;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/digits/sdk/android/ci;Lcom/twitter/sdk/android/core/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/digits/sdk/android/ci;",
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/digits/sdk/android/models/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/digits/sdk/android/h;->b:Lcom/digits/sdk/android/aj;

    invoke-virtual {v0}, Lcom/digits/sdk/android/aj;->b()Lcom/digits/sdk/android/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ai;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/GuestAuthApiInterface;

    invoke-virtual {p2}, Lcom/digits/sdk/android/ci;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/digits/sdk/android/GuestAuthApiInterface;->auth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ld/b;

    move-result-object v0

    invoke-interface {v0, p3}, Ld/b;->a(Ld/d;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/digits/sdk/android/models/DigitsUser;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/digits/sdk/android/h;->b:Lcom/digits/sdk/android/aj;

    invoke-virtual {v0}, Lcom/digits/sdk/android/aj;->b()Lcom/digits/sdk/android/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ai;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/GuestAuthApiInterface;

    invoke-interface {v0, p2, p1}, Lcom/digits/sdk/android/GuestAuthApiInterface;->account(Ljava/lang/String;Ljava/lang/String;)Ld/b;

    move-result-object v0

    invoke-interface {v0, p3}, Ld/b;->a(Ld/d;)V

    return-void
.end method

.method b(Lcom/digits/sdk/android/i;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)Lcom/digits/sdk/android/bt;
    .locals 11

    iget-object v0, p0, Lcom/digits/sdk/android/h;->d:Lcom/digits/sdk/android/ac;

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->w()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->q()Lcom/digits/sdk/android/a;

    move-result-object v8

    new-instance v0, Lcom/digits/sdk/android/h$1;

    iget-object v4, p1, Lcom/digits/sdk/android/i;->b:Ljava/lang/String;

    sget-object v5, Lcom/digits/sdk/android/ci;->b:Lcom/digits/sdk/android/ci;

    iget-boolean v6, p1, Lcom/digits/sdk/android/i;->a:Z

    iget-object v1, p1, Lcom/digits/sdk/android/i;->d:Lcom/digits/sdk/android/g;

    invoke-virtual {p0, v1}, Lcom/digits/sdk/android/h;->a(Lcom/digits/sdk/android/g;)Lcom/digits/sdk/android/LoginResultReceiver;

    move-result-object v7

    move-object v1, p0

    move-object v3, p0

    move-object v9, p2

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/digits/sdk/android/h$1;-><init>(Lcom/digits/sdk/android/h;Landroid/content/Context;Lcom/digits/sdk/android/h;Ljava/lang/String;Lcom/digits/sdk/android/ci;ZLandroid/os/ResultReceiver;Lcom/digits/sdk/android/a;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;Lcom/digits/sdk/android/i;)V

    return-object v0
.end method

.method protected b(Ljava/lang/String;JLjava/lang/String;Lcom/twitter/sdk/android/core/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/digits/sdk/android/models/e;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/digits/sdk/android/h;->b:Lcom/digits/sdk/android/aj;

    invoke-virtual {v0}, Lcom/digits/sdk/android/aj;->b()Lcom/digits/sdk/android/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ai;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/GuestAuthApiInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/digits/sdk/android/GuestAuthApiInterface;->verifyPin(Ljava/lang/String;JLjava/lang/String;)Ld/b;

    move-result-object v0

    invoke-interface {v0, p5}, Ld/b;->a(Ld/d;)V

    return-void
.end method

.method protected b(Ljava/lang/String;Lcom/digits/sdk/android/ci;Lcom/twitter/sdk/android/core/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/digits/sdk/android/ci;",
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/digits/sdk/android/models/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/digits/sdk/android/h;->b:Lcom/digits/sdk/android/aj;

    invoke-virtual {v0}, Lcom/digits/sdk/android/aj;->b()Lcom/digits/sdk/android/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ai;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/GuestAuthApiInterface;

    const-string v2, "third_party_confirmation_code"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "digits_sdk"

    invoke-virtual {p2}, Lcom/digits/sdk/android/ci;->name()Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/digits/sdk/android/GuestAuthApiInterface;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ld/b;

    move-result-object v0

    invoke-interface {v0, p3}, Ld/b;->a(Ld/d;)V

    return-void
.end method
