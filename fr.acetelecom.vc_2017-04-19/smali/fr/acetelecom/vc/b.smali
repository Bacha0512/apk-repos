.class public Lfr/acetelecom/vc/b;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field i:I

.field j:I

.field k:I

.field l:Z

.field m:I

.field n:I

.field o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v2, 0x3

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lfr/acetelecom/vc/b;->a:Ljava/lang/String;

    iput-object v3, p0, Lfr/acetelecom/vc/b;->b:Ljava/lang/String;

    iput-object v3, p0, Lfr/acetelecom/vc/b;->c:Ljava/lang/String;

    iput-object v3, p0, Lfr/acetelecom/vc/b;->p:Ljava/lang/String;

    iput-object v3, p0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    iput-object v3, p0, Lfr/acetelecom/vc/b;->e:Ljava/lang/String;

    iput-object v3, p0, Lfr/acetelecom/vc/b;->f:Ljava/lang/String;

    iput-object v3, p0, Lfr/acetelecom/vc/b;->q:Ljava/lang/String;

    iput-object v3, p0, Lfr/acetelecom/vc/b;->g:Ljava/lang/String;

    iput-object v3, p0, Lfr/acetelecom/vc/b;->r:Ljava/lang/String;

    iput-object v3, p0, Lfr/acetelecom/vc/b;->h:Ljava/lang/String;

    iput-object v3, p0, Lfr/acetelecom/vc/b;->s:Ljava/lang/String;

    iput v4, p0, Lfr/acetelecom/vc/b;->i:I

    iput v4, p0, Lfr/acetelecom/vc/b;->j:I

    iput v4, p0, Lfr/acetelecom/vc/b;->k:I

    iput-boolean v4, p0, Lfr/acetelecom/vc/b;->l:Z

    iput v4, p0, Lfr/acetelecom/vc/b;->m:I

    iput v5, p0, Lfr/acetelecom/vc/b;->n:I

    iput-object v3, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    const-string v0, "VC3b"

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    const-string v1, "uid"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/b;->a:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/b;->a:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfr/acetelecom/vc/b;->b:Ljava/lang/String;

    iget-object v1, p0, Lfr/acetelecom/vc/b;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfr/acetelecom/vc/b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v6, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfr/acetelecom/vc/b;->b:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_3

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfr/acetelecom/vc/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/b;->p:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lfr/acetelecom/vc/b;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_2

    iget-object v0, p0, Lfr/acetelecom/vc/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lfr/acetelecom/vc/b;->c:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "uid"

    iget-object v2, p0, Lfr/acetelecom/vc/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "icc"

    iget-object v2, p0, Lfr/acetelecom/vc/b;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "mcc"

    iget-object v2, p0, Lfr/acetelecom/vc/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "mnc"

    iget-object v2, p0, Lfr/acetelecom/vc/b;->p:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "session"

    iget v2, p0, Lfr/acetelecom/vc/b;->i:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "credits"

    iget v2, p0, Lfr/acetelecom/vc/b;->j:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "seekvalue"

    iget v2, p0, Lfr/acetelecom/vc/b;->k:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "hideMyPhoneNumber"

    iget-boolean v2, p0, Lfr/acetelecom/vc/b;->l:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "myphone"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "lastphone"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "nas"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "tri"

    const-string v2, "zz"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "sp"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "share"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "amb"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "rec"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "userId"

    iget-object v2, p0, Lfr/acetelecom/vc/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    return-void

    :cond_3
    const-string v0, "0"

    iput-object v0, p0, Lfr/acetelecom/vc/b;->c:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lfr/acetelecom/vc/b;->p:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const-string v0, "0"

    iput-object v0, p0, Lfr/acetelecom/vc/b;->c:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lfr/acetelecom/vc/b;->p:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/b;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    const-string v1, "adinfo"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/b;->q:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/b;->q:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "?"

    iput-object v1, p0, Lfr/acetelecom/vc/b;->q:Ljava/lang/String;

    const-string v1, "adinfo"

    iget-object v2, p0, Lfr/acetelecom/vc/b;->q:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    const-string v1, "icc"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/b;->b:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    const-string v1, "mcc"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/b;->c:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    const-string v1, "mnc"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/b;->p:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    const-string v1, "session"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lfr/acetelecom/vc/b;->i:I

    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    const-string v1, "credits"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lfr/acetelecom/vc/b;->j:I

    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    const-string v1, "seekvalue"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lfr/acetelecom/vc/b;->k:I

    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    const-string v1, "hideMyphoneNumber"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lfr/acetelecom/vc/b;->l:Z

    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    const-string v1, "myphone"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    const-string v1, "lastphone"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/b;->e:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    const-string v1, "nas"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/b;->f:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    const-string v1, "tri"

    const-string v2, "??"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/b;->t:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    const-string v1, "sp"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lfr/acetelecom/vc/b;->u:Z

    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    const-string v1, "share"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lfr/acetelecom/vc/b;->m:I

    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    const-string v1, "amb"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lfr/acetelecom/vc/b;->n:I

    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    const-string v1, "userId"

    iget-object v2, p0, Lfr/acetelecom/vc/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/b;->g:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    const-string v1, "name"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/b;->r:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    const-string v1, "email"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/b;->h:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    const-string v1, "photoUrl"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/b;->s:Ljava/lang/String;

    const-string v0, "AppliPrefs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "myphonenumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",session:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lfr/acetelecom/vc/b;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",nas"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",adinfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/b;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 4

    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p2

    :catch_0
    move-exception v0

    const-string v1, "VC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "???"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object p2
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 4

    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p2

    :catch_0
    move-exception v0

    const-string v1, "VC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "???"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/b;->v:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
