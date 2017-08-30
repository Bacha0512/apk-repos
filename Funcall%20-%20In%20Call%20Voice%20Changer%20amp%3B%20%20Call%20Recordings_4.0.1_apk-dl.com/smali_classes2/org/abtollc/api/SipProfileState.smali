.class public Lorg/abtollc/api/SipProfileState;
.super Ljava/lang/Object;
.source "SipProfileState.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final ABSUA_ID:Ljava/lang/String; = "absua_id"

.field public static final ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field private static final ACC_INFO_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/abtollc/api/SipProfileState;",
            ">;"
        }
    .end annotation
.end field

.field public static final ACTIVE:Ljava/lang/String; = "active"

.field public static final ADDED_STATUS:Ljava/lang/String; = "added_status"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/abtollc/api/SipProfileState;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final EXPIRES:Ljava/lang/String; = "expires"

.field public static final FULL_PROJECTION:[Ljava/lang/String;

.field public static final PRIORITY:Ljava/lang/String; = "priority"

.field public static final REG_URI:Ljava/lang/String; = "reg_uri"

.field public static final STATUS_CODE:Ljava/lang/String; = "status_code"

.field public static final STATUS_TEXT:Ljava/lang/String; = "status_text"

.field public static final WIZARD:Ljava/lang/String; = "wizard"

.field private static final serialVersionUID:J = -0x3263e10ae96a3589L


# instance fields
.field private absuaId:I

.field private active:Z

.field private addedStatus:I

.field private databaseId:I

.field private displayName:Ljava/lang/String;

.field private expires:I

.field public primaryKey:I

.field private priority:I

.field private regUri:Ljava/lang/String;

.field private statusCode:I

.field private statusText:Ljava/lang/String;

.field private wizard:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 113
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "absua_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "wizard"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "active"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "status_code"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "status_text"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "expires"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "reg_uri"

    aput-object v2, v0, v1

    sput-object v0, Lorg/abtollc/api/SipProfileState;->FULL_PROJECTION:[Ljava/lang/String;

    .line 210
    new-instance v0, Lorg/abtollc/api/SipProfileState$1;

    invoke-direct {v0}, Lorg/abtollc/api/SipProfileState$1;-><init>()V

    sput-object v0, Lorg/abtollc/api/SipProfileState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 517
    new-instance v0, Lorg/abtollc/api/SipProfileState$2;

    invoke-direct {v0}, Lorg/abtollc/api/SipProfileState$2;-><init>()V

    sput-object v0, Lorg/abtollc/api/SipProfileState;->ACC_INFO_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lorg/abtollc/api/SipProfileState;->primaryKey:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfileState;->regUri:Ljava/lang/String;

    .line 128
    iput v1, p0, Lorg/abtollc/api/SipProfileState;->addedStatus:I

    .line 129
    iput v1, p0, Lorg/abtollc/api/SipProfileState;->absuaId:I

    .line 130
    iput v1, p0, Lorg/abtollc/api/SipProfileState;->statusCode:I

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfileState;->statusText:Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lorg/abtollc/api/SipProfileState;->expires:I

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lorg/abtollc/api/SipProfileState;->primaryKey:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfileState;->regUri:Ljava/lang/String;

    .line 161
    invoke-virtual {p0, p1}, Lorg/abtollc/api/SipProfileState;->createFromDb(Landroid/database/Cursor;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lorg/abtollc/api/SipProfileState;->primaryKey:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipProfileState;->regUri:Ljava/lang/String;

    .line 119
    invoke-direct {p0, p1}, Lorg/abtollc/api/SipProfileState;->readFromParcel(Landroid/os/Parcel;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Lorg/abtollc/api/SipProfile;)V
    .locals 2
    .param p1, "account"    # Lorg/abtollc/api/SipProfile;

    .prologue
    .line 142
    invoke-direct {p0}, Lorg/abtollc/api/SipProfileState;-><init>()V

    .line 144
    iget-wide v0, p1, Lorg/abtollc/api/SipProfile;->id:J

    long-to-int v0, v0

    iput v0, p0, Lorg/abtollc/api/SipProfileState;->databaseId:I

    .line 145
    iget-object v0, p1, Lorg/abtollc/api/SipProfile;->wizard:Ljava/lang/String;

    iput-object v0, p0, Lorg/abtollc/api/SipProfileState;->wizard:Ljava/lang/String;

    .line 146
    iget-boolean v0, p1, Lorg/abtollc/api/SipProfile;->active:Z

    iput-boolean v0, p0, Lorg/abtollc/api/SipProfileState;->active:Z

    .line 147
    iget-object v0, p1, Lorg/abtollc/api/SipProfile;->display_name:Ljava/lang/String;

    iput-object v0, p0, Lorg/abtollc/api/SipProfileState;->displayName:Ljava/lang/String;

    .line 148
    iget v0, p1, Lorg/abtollc/api/SipProfile;->priority:I

    iput v0, p0, Lorg/abtollc/api/SipProfileState;->priority:I

    .line 149
    iget-object v0, p1, Lorg/abtollc/api/SipProfile;->reg_uri:Ljava/lang/String;

    iput-object v0, p0, Lorg/abtollc/api/SipProfileState;->regUri:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public static final getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lorg/abtollc/api/SipProfileState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    sget-object v0, Lorg/abtollc/api/SipProfileState;->ACC_INFO_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method private final readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/abtollc/api/SipProfileState;->primaryKey:I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/abtollc/api/SipProfileState;->databaseId:I

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/abtollc/api/SipProfileState;->absuaId:I

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/abtollc/api/SipProfileState;->wizard:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lorg/abtollc/api/SipProfileState;->active:Z

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfileState;->statusCode:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfileState;->statusText:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfileState;->addedStatus:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfileState;->expires:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfileState;->displayName:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/abtollc/api/SipProfileState;->priority:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/api/SipProfileState;->regUri:Ljava/lang/String;

    .line 185
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final createFromContentValue(Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "args"    # Landroid/content/ContentValues;

    .prologue
    .line 241
    const-string v2, "account_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 242
    .local v0, "tmp_i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfileState;->databaseId:I

    .line 245
    :cond_0
    const-string v2, "absua_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfileState;->absuaId:I

    .line 249
    :cond_1
    const-string v2, "wizard"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "tmp_s":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 251
    iput-object v1, p0, Lorg/abtollc/api/SipProfileState;->wizard:Ljava/lang/String;

    .line 253
    :cond_2
    const-string v2, "active"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_3

    .line 255
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/abtollc/api/SipProfileState;->active:Z

    .line 257
    :cond_3
    const-string v2, "status_code"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_4

    .line 259
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfileState;->statusCode:I

    .line 261
    :cond_4
    const-string v2, "status_text"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    if-eqz v1, :cond_5

    .line 263
    iput-object v1, p0, Lorg/abtollc/api/SipProfileState;->statusText:Ljava/lang/String;

    .line 265
    :cond_5
    const-string v2, "added_status"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_6

    .line 267
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfileState;->addedStatus:I

    .line 269
    :cond_6
    const-string v2, "expires"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_7

    .line 271
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfileState;->expires:I

    .line 273
    :cond_7
    const-string v2, "display_name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    if-eqz v1, :cond_8

    .line 275
    iput-object v1, p0, Lorg/abtollc/api/SipProfileState;->displayName:Ljava/lang/String;

    .line 277
    :cond_8
    const-string v2, "reg_uri"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    if-eqz v1, :cond_9

    .line 279
    iput-object v1, p0, Lorg/abtollc/api/SipProfileState;->regUri:Ljava/lang/String;

    .line 281
    :cond_9
    const-string v2, "priority"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_a

    .line 283
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/abtollc/api/SipProfileState;->priority:I

    .line 286
    :cond_a
    return-void

    .line 255
    :cond_b
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final createFromDb(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 226
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 227
    .local v0, "args":Landroid/content/ContentValues;
    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 228
    invoke-virtual {p0, v0}, Lorg/abtollc/api/SipProfileState;->createFromContentValue(Landroid/content/ContentValues;)V

    .line 229
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public getAbsuaId()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lorg/abtollc/api/SipProfileState;->absuaId:I

    return v0
.end method

.method public getAccountId()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lorg/abtollc/api/SipProfileState;->databaseId:I

    return v0
.end method

.method public getAddedStatus()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lorg/abtollc/api/SipProfileState;->addedStatus:I

    return v0
.end method

.method public getAsContentValue()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 296
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 297
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "account_id"

    iget v2, p0, Lorg/abtollc/api/SipProfileState;->databaseId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    const-string v2, "active"

    iget-boolean v1, p0, Lorg/abtollc/api/SipProfileState;->active:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    const-string v1, "added_status"

    iget v2, p0, Lorg/abtollc/api/SipProfileState;->addedStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    const-string v1, "display_name"

    iget-object v2, p0, Lorg/abtollc/api/SipProfileState;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v1, "expires"

    iget v2, p0, Lorg/abtollc/api/SipProfileState;->expires:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    const-string v1, "absua_id"

    iget v2, p0, Lorg/abtollc/api/SipProfileState;->absuaId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    const-string v1, "priority"

    iget v2, p0, Lorg/abtollc/api/SipProfileState;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    const-string v1, "reg_uri"

    iget-object v2, p0, Lorg/abtollc/api/SipProfileState;->regUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v1, "status_code"

    iget v2, p0, Lorg/abtollc/api/SipProfileState;->statusCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    const-string v1, "status_text"

    iget-object v2, p0, Lorg/abtollc/api/SipProfileState;->statusText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v1, "wizard"

    iget-object v2, p0, Lorg/abtollc/api/SipProfileState;->wizard:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-object v0

    .line 298
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lorg/abtollc/api/SipProfileState;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()I
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lorg/abtollc/api/SipProfileState;->expires:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lorg/abtollc/api/SipProfileState;->priority:I

    return v0
.end method

.method public getRegUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lorg/abtollc/api/SipProfileState;->regUri:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lorg/abtollc/api/SipProfileState;->statusCode:I

    return v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lorg/abtollc/api/SipProfileState;->statusText:Ljava/lang/String;

    return-object v0
.end method

.method public getWizard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lorg/abtollc/api/SipProfileState;->wizard:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lorg/abtollc/api/SipProfileState;->active:Z

    return v0
.end method

.method public isAddedToStack()Z
    .locals 2

    .prologue
    .line 489
    iget v0, p0, Lorg/abtollc/api/SipProfileState;->absuaId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidForCall()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 498
    iget-boolean v2, p0, Lorg/abtollc/api/SipProfileState;->active:Z

    if-eqz v2, :cond_3

    .line 499
    invoke-virtual {p0}, Lorg/abtollc/api/SipProfileState;->getRegUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 504
    :cond_0
    :goto_0
    return v0

    .line 502
    :cond_1
    invoke-virtual {p0}, Lorg/abtollc/api/SipProfileState;->getAbsuaId()I

    move-result v2

    if-ltz v2, :cond_2

    invoke-virtual {p0}, Lorg/abtollc/api/SipProfileState;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lorg/abtollc/api/SipProfileState;->getExpires()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 504
    goto :goto_0
.end method

.method public setAbsuaId(I)V
    .locals 0
    .param p1, "absuaId"    # I

    .prologue
    .line 332
    iput p1, p0, Lorg/abtollc/api/SipProfileState;->absuaId:I

    .line 333
    return-void
.end method

.method public setActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 364
    iput-boolean p1, p0, Lorg/abtollc/api/SipProfileState;->active:Z

    .line 365
    return-void
.end method

.method public setAddedStatus(I)V
    .locals 0
    .param p1, "addedStatus"    # I

    .prologue
    .line 413
    iput p1, p0, Lorg/abtollc/api/SipProfileState;->addedStatus:I

    .line 414
    return-void
.end method

.method public setDatabaseId(I)V
    .locals 0
    .param p1, "databaseId"    # I

    .prologue
    .line 315
    iput p1, p0, Lorg/abtollc/api/SipProfileState;->databaseId:I

    .line 316
    return-void
.end method

.method public setExpires(I)V
    .locals 0
    .param p1, "expires"    # I

    .prologue
    .line 431
    iput p1, p0, Lorg/abtollc/api/SipProfileState;->expires:I

    .line 432
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 462
    iput p1, p0, Lorg/abtollc/api/SipProfileState;->priority:I

    .line 463
    return-void
.end method

.method public setRegUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "regUri"    # Ljava/lang/String;

    .prologue
    .line 472
    iput-object p1, p0, Lorg/abtollc/api/SipProfileState;->regUri:Ljava/lang/String;

    .line 473
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 380
    iput p1, p0, Lorg/abtollc/api/SipProfileState;->statusCode:I

    .line 381
    return-void
.end method

.method public setStatusText(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusText"    # Ljava/lang/String;

    .prologue
    .line 396
    iput-object p1, p0, Lorg/abtollc/api/SipProfileState;->statusText:Ljava/lang/String;

    .line 397
    return-void
.end method

.method public setWizard(Ljava/lang/String;)V
    .locals 0
    .param p1, "wizard"    # Ljava/lang/String;

    .prologue
    .line 348
    iput-object p1, p0, Lorg/abtollc/api/SipProfileState;->wizard:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 191
    iget v0, p0, Lorg/abtollc/api/SipProfileState;->primaryKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget v0, p0, Lorg/abtollc/api/SipProfileState;->databaseId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget v0, p0, Lorg/abtollc/api/SipProfileState;->absuaId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object v0, p0, Lorg/abtollc/api/SipProfileState;->wizard:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-boolean v0, p0, Lorg/abtollc/api/SipProfileState;->active:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget v0, p0, Lorg/abtollc/api/SipProfileState;->statusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-object v0, p0, Lorg/abtollc/api/SipProfileState;->statusText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget v0, p0, Lorg/abtollc/api/SipProfileState;->addedStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget v0, p0, Lorg/abtollc/api/SipProfileState;->expires:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-object v0, p0, Lorg/abtollc/api/SipProfileState;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget v0, p0, Lorg/abtollc/api/SipProfileState;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget-object v0, p0, Lorg/abtollc/api/SipProfileState;->regUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
