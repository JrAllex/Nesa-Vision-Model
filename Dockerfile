# একটি লাইটওয়েট পাইথন ইমেজ ব্যবহার করা হচ্ছে
FROM python:3.9-slim

# ওয়ার্কিং ডিরেক্টরি সেট করা
WORKDIR /app

# প্রয়োজনীয় ফাইলগুলো কন্টেইনারে কপি করা
COPY requirements.txt .

# লাইব্রেরিগুলো ইনস্টল করা
RUN pip install --no-cache-dir -r requirements.txt

# সব কোড ফাইল কন্টেইনারে কপি করা
COPY . .

# কন্টেইনার স্টার্ট হলে কোন ফাইলটি রান করবে
CMD ["python", "app.py"]