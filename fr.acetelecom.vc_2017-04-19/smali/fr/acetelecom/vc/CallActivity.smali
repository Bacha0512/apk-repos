.class public Lfr/acetelecom/vc/CallActivity;
.super Landroid/support/v7/app/AppCompatActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lfr/acetelecom/vc/d$a;
.implements Lfr/acetelecom/vc/d$b;
.implements Lfr/acetelecom/vc/d$d;
.implements Lfr/acetelecom/vc/n$a;
.implements Lfr/acetelecom/vc/o$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/acetelecom/vc/CallActivity$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/os/Handler;


# instance fields
.field private b:Lfr/acetelecom/vc/d;

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/ImageButton;

.field private f:Z

.field private g:I

.field private h:I

.field private i:J

.field private j:Z

.field private k:Lfr/acetelecom/vc/b;

.field private l:Landroid/hardware/SensorManager;

.field private m:Z

.field private n:Landroid/app/ProgressDialog;

.field private o:Lfr/acetelecom/vc/c;

.field private p:I

.field private q:Lfr/acetelecom/vc/n;

.field private final r:Ljava/lang/Runnable;

.field private final s:Ljava/lang/Runnable;

.field private final t:Ljava/lang/Runnable;

.field private final u:Landroid/hardware/SensorEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lfr/acetelecom/vc/CallActivity;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    iput-object v2, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    iput-boolean v1, p0, Lfr/acetelecom/vc/CallActivity;->f:Z

    iput v1, p0, Lfr/acetelecom/vc/CallActivity;->g:I

    iput v1, p0, Lfr/acetelecom/vc/CallActivity;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/acetelecom/vc/CallActivity;->j:Z

    iput-object v2, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    iput-boolean v1, p0, Lfr/acetelecom/vc/CallActivity;->m:Z

    iput v1, p0, Lfr/acetelecom/vc/CallActivity;->p:I

    new-instance v0, Lfr/acetelecom/vc/CallActivity$7;

    invoke-direct {v0, p0}, Lfr/acetelecom/vc/CallActivity$7;-><init>(Lfr/acetelecom/vc/CallActivity;)V

    iput-object v0, p0, Lfr/acetelecom/vc/CallActivity;->r:Ljava/lang/Runnable;

    new-instance v0, Lfr/acetelecom/vc/CallActivity$8;

    invoke-direct {v0, p0}, Lfr/acetelecom/vc/CallActivity$8;-><init>(Lfr/acetelecom/vc/CallActivity;)V

    iput-object v0, p0, Lfr/acetelecom/vc/CallActivity;->s:Ljava/lang/Runnable;

    new-instance v0, Lfr/acetelecom/vc/CallActivity$9;

    invoke-direct {v0, p0}, Lfr/acetelecom/vc/CallActivity$9;-><init>(Lfr/acetelecom/vc/CallActivity;)V

    iput-object v0, p0, Lfr/acetelecom/vc/CallActivity;->t:Ljava/lang/Runnable;

    new-instance v0, Lfr/acetelecom/vc/CallActivity$10;

    invoke-direct {v0, p0}, Lfr/acetelecom/vc/CallActivity$10;-><init>(Lfr/acetelecom/vc/CallActivity;)V

    iput-object v0, p0, Lfr/acetelecom/vc/CallActivity;->u:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic a(Lfr/acetelecom/vc/CallActivity;)I
    .locals 1

    iget v0, p0, Lfr/acetelecom/vc/CallActivity;->p:I

    return v0
.end method

.method static synthetic a(Lfr/acetelecom/vc/CallActivity;I)I
    .locals 0

    iput p1, p0, Lfr/acetelecom/vc/CallActivity;->p:I

    return p1
.end method

.method static synthetic a(Lfr/acetelecom/vc/CallActivity;Lfr/acetelecom/vc/n;)Lfr/acetelecom/vc/n;
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/CallActivity;->q:Lfr/acetelecom/vc/n;

    return-object p1
.end method

.method static synthetic b(Lfr/acetelecom/vc/CallActivity;)Lfr/acetelecom/vc/b;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lfr/acetelecom/vc/CallActivity;->a:Landroid/os/Handler;

    new-instance v1, Lfr/acetelecom/vc/CallActivity$4;

    invoke-direct {v1, p0, p1}, Lfr/acetelecom/vc/CallActivity$4;-><init>(Lfr/acetelecom/vc/CallActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b(Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "Call"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " !!!!!!!!!!!!!!! call  manu "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Call"

    const-string v1, " !!!!!!!!!!!!!!! call start"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    invoke-virtual {v0}, Lfr/acetelecom/vc/d;->d()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lfr/acetelecom/vc/CallActivity;->f:Z

    if-eqz v0, :cond_1

    const-string v0, "Call"

    const-string v1, "??outCallPending  "

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Call"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set outCallPending ******************** ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    iget-object v2, v2, Lfr/acetelecom/vc/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v6, p0, Lfr/acetelecom/vc/CallActivity;->f:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    iget-object v0, v0, Lfr/acetelecom/vc/b;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "Appelant"

    iget-object v2, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    const-string v3, "myphonecall"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "To"

    iget-object v2, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    const-string v3, "lastphone"

    iget-object v4, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    iget-object v4, v4, Lfr/acetelecom/vc/b;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uuid"

    iget-object v2, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    const-string v3, "uid"

    iget-object v4, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    iget-object v4, v4, Lfr/acetelecom/vc/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ano"

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    const-string v3, "hideMyPhoneNumber"

    invoke-virtual {v0, v3, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    iget v2, p0, Lfr/acetelecom/vc/CallActivity;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "val"

    const-string v2, "%02d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lfr/acetelecom/vc/CallActivity;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "session"

    iget-object v2, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    const-string v3, "session"

    invoke-virtual {v2, v3, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tpsmax"

    iget-object v2, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    const-string v3, "credits"

    invoke-virtual {v2, v3, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "droid"

    const-string v2, "1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nas"

    iget-object v2, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    const-string v3, "mcc"

    const-string v4, "998"

    invoke-virtual {v2, v3, v4}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "amb"

    iget-object v2, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    const-string v3, "amb"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rec"

    iget-object v2, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    const-string v3, "rec"

    invoke-virtual {v2, v3, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "VC"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    invoke-virtual {v0, v1}, Lfr/acetelecom/vc/d;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->e:Landroid/widget/ImageButton;

    const v1, -0x333334

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->e:Landroid/widget/ImageButton;

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    invoke-virtual {v0, v5}, Lfr/acetelecom/vc/d;->a(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lfr/acetelecom/vc/CallActivity;->i:J

    goto/16 :goto_0

    :cond_2
    const-string v0, "0"

    goto/16 :goto_1

    :cond_3
    const-string v0, "Call"

    const-string v1, "??lastphone  "

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/CallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    invoke-virtual {v0}, Lfr/acetelecom/vc/d;->c()V

    goto/16 :goto_0
.end method

.method static synthetic c(Lfr/acetelecom/vc/CallActivity;)Lfr/acetelecom/vc/n;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->q:Lfr/acetelecom/vc/n;

    return-object v0
.end method

.method static synthetic d(Lfr/acetelecom/vc/CallActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lfr/acetelecom/vc/CallActivity;)Lfr/acetelecom/vc/d;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    return-object v0
.end method

.method static synthetic f(Lfr/acetelecom/vc/CallActivity;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->c:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic g(Lfr/acetelecom/vc/CallActivity;)V
    .locals 0

    invoke-direct {p0}, Lfr/acetelecom/vc/CallActivity;->m()V

    return-void
.end method

.method static synthetic h(Lfr/acetelecom/vc/CallActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lfr/acetelecom/vc/CallActivity;->f:Z

    return v0
.end method

.method static synthetic i(Lfr/acetelecom/vc/CallActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->n:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private j()V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, -0x2

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfr/acetelecom/vc/CallActivity;->n:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->n:Landroid/app/ProgressDialog;

    const v1, 0x7f070081

    invoke-virtual {p0, v1}, Lfr/acetelecom/vc/CallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->n:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->n:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->n:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->n:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->n:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    const v0, 0x7f0e00c4

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lfr/acetelecom/vc/CallActivity;->c:Landroid/widget/ImageButton;

    const v0, 0x7f0e00c3

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lfr/acetelecom/vc/CallActivity;->e:Landroid/widget/ImageButton;

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e00c5

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lfr/acetelecom/vc/CallActivity;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    const-string v1, "lastphone"

    iget-object v2, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    iget-object v2, v2, Lfr/acetelecom/vc/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0e00c0

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lfr/acetelecom/vc/CallActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lfr/acetelecom/vc/CallActivity;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lfr/acetelecom/vc/CallActivity;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v0, Lfr/acetelecom/vc/c;

    const-string v1, "https://app1.allogag.com"

    invoke-virtual {p0}, Lfr/acetelecom/vc/CallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lfr/acetelecom/vc/c;-><init>(Ljava/lang/String;Landroid/content/Context;Lfr/acetelecom/vc/b;Lfr/acetelecom/vc/c$a;)V

    iput-object v0, p0, Lfr/acetelecom/vc/CallActivity;->o:Lfr/acetelecom/vc/c;

    new-instance v1, Lfr/acetelecom/vc/CallActivity$a;

    invoke-virtual {p0}, Lfr/acetelecom/vc/CallActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lfr/acetelecom/vc/CallActivity$a;-><init>(Lfr/acetelecom/vc/CallActivity;Landroid/support/v4/app/FragmentManager;)V

    const v0, 0x7f0e00c2

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const v1, 0x7f0e00c1

    invoke-virtual {p0, v1}, Lfr/acetelecom/vc/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    new-instance v1, Lfr/acetelecom/vc/CallActivity$1;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/CallActivity$1;-><init>(Lfr/acetelecom/vc/CallActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lfr/acetelecom/vc/CallActivity$3;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/CallActivity$3;-><init>(Lfr/acetelecom/vc/CallActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method static synthetic j(Lfr/acetelecom/vc/CallActivity;)V
    .locals 0

    invoke-direct {p0}, Lfr/acetelecom/vc/CallActivity;->l()V

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    if-nez v0, :cond_0

    const-string v0, "Call"

    const-string v1, "??phone"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lfr/acetelecom/vc/CallActivity;->a:Landroid/os/Handler;

    new-instance v1, Lfr/acetelecom/vc/CallActivity$5;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/CallActivity$5;-><init>(Lfr/acetelecom/vc/CallActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private l()V
    .locals 3

    new-instance v0, Landroid/support/v7/app/a$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/a$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07002b

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a$a;->a(I)Landroid/support/v7/app/a$a;

    move-result-object v0

    const v1, 0x7f07006c

    invoke-virtual {p0, v1}, Lfr/acetelecom/vc/CallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/a$a;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lfr/acetelecom/vc/CallActivity$6;

    invoke-direct {v2, p0}, Lfr/acetelecom/vc/CallActivity$6;-><init>(Lfr/acetelecom/vc/CallActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/a$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/a$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/a$a;->b()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->show()V

    return-void
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/CallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const-string v0, "Call"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive seekval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "%02d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "receive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OK vc senddtmf!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dtmfs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    invoke-virtual {v1}, Lfr/acetelecom/vc/d;->d()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "Call"

    const-string v1, "?onFragmentInteractionVoiceChange?phone"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    invoke-virtual {v1}, Lfr/acetelecom/vc/d;->a()V

    iget-object v1, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    invoke-virtual {v1, v0}, Lfr/acetelecom/vc/d;->a(Ljava/lang/String;)I

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    invoke-virtual {v0}, Lfr/acetelecom/vc/d;->b()V

    goto :goto_0
.end method

.method public a(IZI)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string v0, "Call"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive amb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    iput p1, v0, Lfr/acetelecom/vc/b;->n:I

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    const-string v1, "amb"

    iget-object v2, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    iget v2, v2, Lfr/acetelecom/vc/b;->n:I

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    const-string v1, "ambpos"

    invoke-virtual {v0, v1, p3}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    invoke-virtual {v0}, Lfr/acetelecom/vc/d;->d()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "Call"

    const-string v1, "?onFragmentInteractionSound?phone"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    if-eqz p2, :cond_4

    if-ne p1, v3, :cond_3

    const-string v0, "99"

    :goto_1
    const-string v1, "receive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OK senddtmf!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dtmfs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    invoke-virtual {v1}, Lfr/acetelecom/vc/d;->a()V

    iget-object v1, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    invoke-virtual {v1, v0}, Lfr/acetelecom/vc/d;->a(Ljava/lang/String;)I

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    invoke-virtual {v0}, Lfr/acetelecom/vc/d;->b()V

    goto :goto_0

    :cond_3
    const-string v0, "%02d"

    new-array v1, v5, [Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    if-ne p1, v3, :cond_5

    const-string v0, "59"

    goto :goto_1

    :cond_5
    const-string v0, "%02d"

    new-array v1, v5, [Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/acetelecom/vc/CallActivity;->f:Z

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    const-string v1, "errDial"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z

    const-string v0, "Call"

    const-string v1, "******************** Ya une couille dans le pat\u00e9 !!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/CallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lfr/acetelecom/vc/e;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    const-string v0, "onConnectionConnecting"

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/CallActivity;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lfr/acetelecom/vc/CallActivity;->k()V

    return-void
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceStoppedListening:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/CallActivity;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "onDeviceStoppedListening"

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/CallActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b_()V
    .locals 1

    const-string v0, "onIncomingConnectionDisconnected"

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/CallActivity;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lfr/acetelecom/vc/CallActivity;->k()V

    invoke-virtual {p0}, Lfr/acetelecom/vc/CallActivity;->finish()V

    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "onConnectionConnected"

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/CallActivity;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lfr/acetelecom/vc/CallActivity;->k()V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    const-string v1, "errDial"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/acetelecom/vc/CallActivity;->m:Z

    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    const-string v1, "errDial"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;Z)Z

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoginError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/CallActivity;->b(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lfr/acetelecom/vc/CallActivity;->k()V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/CallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string v0, "onLoginError"

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/CallActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c_()V
    .locals 1

    const-string v0, "onConnectionDisconnecting"

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/CallActivity;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lfr/acetelecom/vc/CallActivity;->k()V

    return-void
.end method

.method public e()V
    .locals 6

    const/4 v5, 0x0

    iput-boolean v5, p0, Lfr/acetelecom/vc/CallActivity;->f:Z

    invoke-direct {p0}, Lfr/acetelecom/vc/CallActivity;->k()V

    const-string v0, "Call"

    const-string v1, "******************** finish  onConnectionDisconnected !!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lfr/acetelecom/vc/CallActivity;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->o:Lfr/acetelecom/vc/c;

    const-string v1, "netErr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    const-string v4, "session"

    invoke-virtual {v3, v4, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    const-string v4, "credits"

    invoke-virtual {v3, v4, v5}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/CallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lfr/acetelecom/vc/CallActivity;->i:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lfr/acetelecom/vc/CallActivity;->i:J

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    const-string v1, "tpsCall"

    iget-wide v2, p0, Lfr/acetelecom/vc/CallActivity;->i:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lfr/acetelecom/vc/b;->a(Ljava/lang/String;I)I

    const-string v0, "Call"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "******************** tpsCall  onConnectionDisconnected !!!!!!!!!!!!!!!!!!!!!!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lfr/acetelecom/vc/CallActivity;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "fr.acetelecom.vc.TPS"

    iget-wide v2, p0, Lfr/acetelecom/vc/CallActivity;->i:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lfr/acetelecom/vc/CallActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lfr/acetelecom/vc/CallActivity;->finish()V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    const-string v0, "onDeviceStartedListening"

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/CallActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 1

    const-string v0, "Login in"

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/CallActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .locals 2

    const-string v0, "onLoginFinished"

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/CallActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    if-nez v0, :cond_1

    const-string v0, "Call"

    const-string v1, "??phone"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lfr/acetelecom/vc/CallActivity;->k()V

    iget-boolean v0, p0, Lfr/acetelecom/vc/CallActivity;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/acetelecom/vc/CallActivity;->j:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/CallActivity;->b(Z)V

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    const-string v0, "Call"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onBackPressed outCallPending ******************** = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lfr/acetelecom/vc/CallActivity;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lfr/acetelecom/vc/CallActivity;->f:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const v2, -0xff0001

    const-string v0, "Call"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    if-nez v0, :cond_1

    const-string v0, "Call"

    const-string v1, "??phone"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e00c4

    if-ne v0, v1, :cond_2

    invoke-direct {p0, v3}, Lfr/acetelecom/vc/CallActivity;->b(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e00c3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->e:Landroid/widget/ImageButton;

    const v1, -0x333334

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->e:Landroid/widget/ImageButton;

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfr/acetelecom/vc/d;->a(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->e:Landroid/widget/ImageButton;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->e:Landroid/widget/ImageButton;

    const v1, 0x7f0200dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    invoke-virtual {v0, v3}, Lfr/acetelecom/vc/d;->a(Z)V

    goto :goto_0

    :cond_4
    const-string v0, ""

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    iget-object v1, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    if-nez v1, :cond_5

    const-string v0, "Call"

    const-string v1, "??phone"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v1, "Call"

    const-string v2, "SEND DIGIT "

    invoke-static {v1, v2}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    invoke-virtual {v1}, Lfr/acetelecom/vc/d;->a()V

    iget-object v1, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    invoke-virtual {v1, v0}, Lfr/acetelecom/vc/d;->a(Ljava/lang/String;)I

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    invoke-virtual {v0}, Lfr/acetelecom/vc/d;->b()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "Call"

    const-string v1, "------------------onCreate-----------------------------------"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lfr/acetelecom/vc/CallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/CallActivity;->setContentView(I)V

    if-eqz p1, :cond_0

    const-string v0, "Call"

    const-string v1, "------------------onCreate savedInstanceState != null -----------------------------------"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lfr/acetelecom/vc/CallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fr.acetelecom.vc.TYPE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lfr/acetelecom/vc/CallActivity;->g:I

    const-string v1, "fr.acetelecom.vc.VAL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lfr/acetelecom/vc/CallActivity;->h:I

    new-instance v0, Lfr/acetelecom/vc/b;

    invoke-direct {v0, p0}, Lfr/acetelecom/vc/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    invoke-direct {p0}, Lfr/acetelecom/vc/CallActivity;->j()V

    invoke-virtual {p0}, Lfr/acetelecom/vc/CallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lfr/acetelecom/vc/d;->a(Landroid/content/Context;)Lfr/acetelecom/vc/d;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    invoke-virtual {v0, p0, p0, p0}, Lfr/acetelecom/vc/d;->a(Lfr/acetelecom/vc/d$d;Lfr/acetelecom/vc/d$a;Lfr/acetelecom/vc/d$b;)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    iget-object v1, p0, Lfr/acetelecom/vc/CallActivity;->k:Lfr/acetelecom/vc/b;

    const-string v2, "uid"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lfr/acetelecom/vc/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v4}, Lfr/acetelecom/vc/d;->a(Ljava/lang/String;ZZ)V

    invoke-virtual {p0}, Lfr/acetelecom/vc/CallActivity;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lfr/acetelecom/vc/CallActivity;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->b()V

    :cond_1
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/CallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lfr/acetelecom/vc/CallActivity;->l:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->l:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "Call"

    const-string v1, "No Proximity Sensor!"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lfr/acetelecom/vc/CallActivity;->l:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lfr/acetelecom/vc/CallActivity;->u:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Call"

    const-string v1, "------------------onDestroy-----------------------------------"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    invoke-virtual {v0}, Lfr/acetelecom/vc/d;->c()V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    invoke-virtual {v0, v2, v2, v2}, Lfr/acetelecom/vc/d;->a(Lfr/acetelecom/vc/d$d;Lfr/acetelecom/vc/d$a;Lfr/acetelecom/vc/d$b;)V

    iput-object v2, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "Call"

    const-string v1, "------------------onNewIntent-----------------------------------"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lfr/acetelecom/vc/CallActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lfr/acetelecom/vc/CallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Call pending"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lfr/acetelecom/vc/CallActivity;->onBackPressed()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    const-string v0, "Call"

    const-string v1, "------------------onResume-----------------------------------"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    invoke-virtual {p0}, Lfr/acetelecom/vc/CallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/acetelecom/vc/d;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onResume handleIncomingIntent"

    invoke-direct {p0, v0}, Lfr/acetelecom/vc/CallActivity;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lfr/acetelecom/vc/CallActivity;->k()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "Call"

    const-string v1, "------------------onStop-----------------------------------"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->b:Lfr/acetelecom/vc/d;

    invoke-virtual {v0}, Lfr/acetelecom/vc/d;->c()V

    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->l:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lfr/acetelecom/vc/CallActivity;->u:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lfr/acetelecom/vc/CallActivity;->n:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method
