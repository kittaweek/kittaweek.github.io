# kittaweek.github.io — Context สำหรับ AI

> เจ้าของ: Kittawee "Post" Kongpan (kittaweek) · repo ส่วนตัว · ตอบภาษาไทย สั้น กระชับ

## ใช้ทำอะไร
เว็บแบรนด์ส่วนตัวของ Post (VitePress, 2 ภาษา EN/TH) · repo **public** อย่าใส่ข้อมูลภายใน/ข้อมูลลูกค้า

## โครงสร้าง
- `site/` เนื้อหา (about, career, portfolio, articles) · `site/th/` = ฉบับภาษาไทย ต้องแก้คู่กับ EN
- `site/.vitepress/config.mts` = nav, i18n, sitemap · `site/docs/` อยู่ใน `.gitignore` (ยังไม่เผยแพร่)
- deploy ผ่าน GitHub Pages ด้วย `.github/workflows/deploy.yml` · branch `gh-pages` เป็นของเก่า ไม่ต้องแก้

## คำสั่ง
- `make install` / `make dev` (port 8080) / `make build` / `make preview` / `make audit`
- `yarn dev`, `yarn build` ทำงานเหมือนกัน

## เนื้อหา
- ตำแหน่งโปรไฟล์ต้องตามกฎ "Personal & Founder Profile Positioning" ใน `AGENTS.md` ของ workspace Devsiam (เน้น Management & Leadership) ถ้าไม่แน่ใจให้ถาม Post

## กฎ
- ห้าม push ตรงเข้า `main` → เปิด PR เสมอ · merge แบบ squash เท่านั้น · branch ที่ merge แล้วลบอัตโนมัติ
- AI ตรวจและสรุปได้ แต่ **ไม่ merge เอง** (Post เป็นคน merge) · ไม่ใช้ auto-merge
- CI ต้องเขียวก่อน merge
- ห้าม commit secret / `.env` / `*.bak` / ข้อมูลจริง · ใส่ค่าตัวอย่างใน `.env.example` เท่านั้น
- pin version ทุกอย่าง (image, package, action) · ห้าม `:latest`
- Branch: `<type>/<slug>` (feat, fix, docs, chore) · Commit: Conventional Commits
- `.claude/settings.local.json` อยู่ใน `.gitignore` · ห้าม commit
